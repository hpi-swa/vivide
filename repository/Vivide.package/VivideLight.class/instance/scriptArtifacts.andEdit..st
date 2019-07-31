as yet unclassified
scriptArtifacts: someObjects andEdit: aBoolean
	"Create a fresh script and open it."
	
	| objects script toolWnd editorWnd |
	VivideLight useClassicMode
		ifTrue: [^ self openArtifacts: someObjects].
	
	objects := someObjects asList.
	
	self flag: #evaluate. "mt: Unwrap name bindings."
	objects := (self currentEvent in: [:evt | evt isDropEvent and: [evt contents hasFlag: #evaluate]])
		ifTrue: [objects collect: [:o | o value]] ifFalse: [objects].
	
	script := ViScriptTemplate createIdentityForObjects: objects.
	script setProperty: #isNew toValue: true.
	
	toolWnd := self openScript: script withObjects: objects.
	aBoolean ifTrue: [editorWnd := toolWnd editor pane debugQuery].

	^ {toolWnd. editorWnd}