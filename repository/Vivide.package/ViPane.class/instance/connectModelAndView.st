initialization
connectModelAndView
	"Set up the communication between the model's root node and the current view."

	self model ifNotNil: [:m |
		self connect: self model signal: #modelReset toSelector: #notifyChangedResults].
	self view ifNotNil: [:v |
		self connect: v signal: #yield: toSelector: #notifyChangedSelection:].
	
	(self model isNil or: [self view isNil]) ifTrue: [^ self].

	self view connect: self model signal: #modelReset toSelector: #process: pattern: #(0).
	
	"self view connect: self model signal: #propertiesChanged toSelector: #process: pattern: #(0).
	self view connect: self model signal: #propertiesChanged: toSelector: #process: pattern: #(0)."
