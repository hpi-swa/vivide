adding pages
addOutputPageSilently

	self ui stack addPageSilently: ViQueryPage new.
	self addButtonForPage: self pages last.
	^ self pages last