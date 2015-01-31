private
wrapEditorState: anEditorState
	"Prepared for specific object editor states. See: #insertObject:after:. Extract visual propertis."

	| cls node |
	cls := Smalltalk at: (anEditorState properties at: #className ifAbsent: []) ifAbsent: [].
	
	node := UiPropertyItemNode new
		at: #state put: anEditorState;
		at: #icon put: ((anEditorState properties at: #icon ifAbsent: [])
			ifNil: [cls
				ifNotNil: [cls editorIcon]
				ifNil: [ViIconService doObject: (anEditorState properties at: #object)]]);
		"at: #balloonText put: (cls
			ifNotNil: [cls editorDescription]
			ifNil: []);"
		at: #text put: (anEditorState properties at: #headerText);
		yourself.
		
	self connect: node signal: #propertiesChanged: toSelector: #onPropertiesChanged:in: pattern: #(1 0).
	
	^ node