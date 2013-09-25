build: index.js templates/gallery.js templates/gallerypage.js components
	@component build

templates/gallery.js: templates/gallery.html
	@component convert $<

templates/gallerypage.js: templates/gallerypage.html
	@component convert $<	

components:
	@component install

clean:
	rm -fr build components

.PHONY: clean