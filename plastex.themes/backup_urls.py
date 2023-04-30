import os

from TexSoup import TexSoup

tex = f = open('main.tex').read()

soup = TexSoup(tex)

urls = set(label.string for label in soup.find_all('url'))

bak_dir = 'backup_urls'
os.system('mkdir -p %s' % bak_dir)
os.system('cd %s' % bak_dir)

for url in urls:
	os.system('wget -r -l1 %s' % url)
