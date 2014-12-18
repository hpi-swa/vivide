as yet unclassified
scriptArtifacts: someObjects
	"Create a fresh script and open it."
	
	| objects script toolWnd editorWnd |
	self assert: VivideLight useClassicMode not.
	
	(ViQueryInterpreter isCollection: someObjects)
		ifFalse: [objects := {someObjects}]. 
	
	self flag: #evaluate. "mt: Unwrap name bindings."
	objects := (self currentEvent in: [:evt | evt isDropEvent and: [evt contents hasFlag: #evaluate]])
		ifTrue: [someObjects collect: [:o | o value]] ifFalse: [someObjects].
	
	script := [:object | object] asScript
		setProperty: #isNew toValue: true;
		yourself.
		
	toolWnd := ViSinglePaneEditor
		open: script
		for: objects.
	editorWnd := ViSinglePaneEditor
		open: #artifacts
		for: (objects ifEmpty: [{}] ifNotEmpty: [{objects}]), script steps.

	^ {toolWnd. editorWnd}