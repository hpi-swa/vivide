as yet unclassified
updateLabel
	"Read script properties and update label/title of my enclosing system window."
	
	| newLabel |
	self script ifNil: [^ self].
	self owner ifNil: [^ self].
	
	newLabel := self script nextLabel.
		
	"If we are (deeply) embedded in a tool, set the label as tooltip."
	self owner class == ViSinglePaneEditor
		ifFalse: [self balloonText: newLabel]
		ifTrue: [self owner updateHeaderText].