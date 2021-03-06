# Copyright (c) 2013, Web Notes Technologies Pvt. Ltd. and Contributors
# MIT License. See license.txt

# For license information, please see license.txt

from __future__ import unicode_literals
import webnotes
import webnotes.utils
import os, datetime

from website.doctype.website_sitemap.website_sitemap import add_to_sitemap

class DocType:
	def __init__(self, d, dl):
		self.doc, self.doclist = d, dl

	def after_insert(self):
		if self.doc.page_or_generator == "Page":
			lastmod = datetime.datetime.fromtimestamp(float(self.doc.fields.lastmod)).strftime("%Y-%m-%d")
			add_to_sitemap(self.doc.fields.copy().update({"lastmod": lastmod}))
		else:
			condition = ""
			if self.doc.condition_field:
				condition = " where ifnull(%s, 0)=1" % self.doc.condition_field
			
			for name in webnotes.conn.sql_list("""select name from `tab%s` %s""" \
				% (self.doc.ref_doctype, condition)):
				webnotes.bean(self.doc.ref_doctype, name).run_method("on_update")

	def on_trash(self):
		webnotes.conn.sql("""delete from `tabWebsite Sitemap` 
			where website_sitemap_config = %s""", self.doc.name)


def rebuild_website_sitemap_config():
	webnotes.conn.sql("""delete from `tabWebsite Sitemap Config`""")
	webnotes.conn.sql("""delete from `tabWebsite Sitemap`""")
	build_website_sitemap_config()

def build_website_sitemap_config():		
	config = {"pages": {}, "generators":{}}
	basepath = webnotes.utils.get_base_path()
	
	existing_configs = dict(webnotes.conn.sql("""select name, lastmod from `tabWebsite Sitemap Config`"""))
		
	for path, folders, files in os.walk(basepath, followlinks=True):
		for ignore in ('locale', 'public'):
			if ignore in folders: 
				folders.remove(ignore)

		if os.path.basename(path)=="pages" and os.path.basename(os.path.dirname(path))=="templates":
			for fname in files:
				fname = webnotes.utils.cstr(fname)
				if fname.split(".")[-1] in ("html", "xml", "js", "css"):
					name = add_website_sitemap_config("Page", path, fname, existing_configs)
					if name in existing_configs: del existing_configs[name]

		if os.path.basename(path)=="generators" and os.path.basename(os.path.dirname(path))=="templates":
			for fname in files:
				if fname.endswith(".html"):
					name = add_website_sitemap_config("Generator", path, fname, existing_configs)
					if name in existing_configs: del existing_configs[name]
					
	for name in existing_configs:
		webnotes.delete_doc("Website Sitemap Config", name)

	webnotes.conn.commit()

def add_website_sitemap_config(page_or_generator, path, fname, existing_configs):
	basepath = webnotes.utils.get_base_path()
	template_path = os.path.relpath(os.path.join(path, fname), basepath)
	lastmod = int(os.path.getmtime(template_path))

	name = fname[:-5] if fname.endswith(".html") else fname
	
	config_lastmod = existing_configs.get(name)
	if str(config_lastmod) != str(lastmod):
		webnotes.delete_doc("Website Sitemap Config", name)
	else:
		return name
		# already exists and safe
	
	wsc = webnotes._dict({
		"doctype": "Website Sitemap Config",
		"page_or_generator": page_or_generator,
		"link_name": name,
		"template_path": template_path,
		"lastmod": lastmod
	})
	
	controller_name = fname.split(".")[0].replace("-", "_") + ".py"
	controller_path = os.path.join(path, controller_name)
	if os.path.exists(controller_path):
		wsc.controller = os.path.relpath(controller_path[:-3], basepath).replace(os.path.sep, ".")
		wsc.controller = ".".join(wsc.controller.split(".")[1:])

	if wsc.controller:
		module = webnotes.get_module(wsc.controller)
		wsc.no_cache = getattr(module, "no_cache", 0)
		wsc.no_sitemap = wsc.no_cache or getattr(module, "no_sitemap", 0)
		wsc.ref_doctype = getattr(module, "doctype", None)
		wsc.page_name_field = getattr(module, "page_name_field", "page_name")
		wsc.condition_field = getattr(module, "condition_field", None)
		
	webnotes.bean(wsc).insert()
	
	return name
