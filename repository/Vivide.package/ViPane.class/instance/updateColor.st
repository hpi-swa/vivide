as yet unclassified
updateColor
	"Read script properties and update my color or the color of my enclosing system window."
	
	| newColor |
	self currentQuery ifNil: [^ self].
	self owner ifNil: [^ self].
	
	newColor := self currentQuery valueOfProperty: #color ifAbsent: [
		(self owner == self world or: [self owner class == ViSinglePaneEditor])
			ifTrue: [Color veryVeryLightGray]
			ifFalse: [Color transparent]].
	
	"Support blocks in color property."
	newColor := newColor value.
	
	"If we are (deeply) embedded in a tool, set our own color."
	self owner class == ViSinglePaneEditor
		ifFalse: [self color: newColor. ^ self].
	
	"Colorize the window if we are toplevel."
	(self firstOwnerSuchThat: [:m | m isSystemWindow])
		ifNotNil: [:wnd | wnd setWindowColor: newColor].