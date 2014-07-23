nil
build

	| panel |
	panel := self createPanel.
	panel addMorph: (self
		createRow: (self createPages: self outline)
		topFraction: 0.0
		bottomFraction: 0.6).
	panel addMorph: (self
		createRow: {self createPage: self details}
		topFraction: 0.6
		bottomFraction: 1.0).

	"Setup unorthodox data flow connections. ;-)"
	self
		connect: (self detectPage: #classes) signal: #objectSelectionChanged:
		to: (self detectPage: #definition) selector: #objects:.
	self
		connect: (self detectPage: #methods) signal: #objectSelectionChanged:
		to: (self detectPage: #code) selector: #objects:.
	
	"Get going. Better: Find global queries to execute."
	(self detectPage: #systemCategories) objects: {SystemOrganization}.
	

	panel
		addPaneSplitters;
		extent: 600@300.

	(panel openInWindowLabeled: 'VIS System Browser')
		model: self;
		refreshWindowColor.
		
	"Workaround for strange behavior of SystemWindow."
	panel color: self defaultBackgroundColor.