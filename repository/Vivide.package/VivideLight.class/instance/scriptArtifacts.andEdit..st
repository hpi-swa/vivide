as yet unclassified
scriptArtifacts: someObjects andEdit: aBoolean
	"Create a fresh script and open it."
	
	| objects script toolPane editorPane |
	VivideLight useClassicMode
		ifTrue: [^ self openArtifacts: someObjects].
	
	objects := someObjects asList.
	
	self flag: #flatten. "mt: Avoid tuple treatment."
	objects := (self currentEvent in: [:evt | evt isDropEvent and: [evt contents hasFlag: #flatten]])
		ifTrue: [objects gather: [:o | o asList]] ifFalse: [objects].
	
	self flag: #evaluate. "mt: Unwrap name bindings."
	objects := (self currentEvent in: [:evt | evt isDropEvent and: [evt contents hasFlag: #evaluate]])
		ifTrue: [objects collect: [:o | o value]] ifFalse: [objects].
	
	script := ViScriptTemplate createIdentityForObjects: objects.
	script setProperty: #isNew toValue: true.
	
	toolPane := self openScript: script withObjects: objects.
	aBoolean ifTrue: [editorPane := toolPane editScript].

	^ {toolPane. editorPane}