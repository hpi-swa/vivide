actions - open
openArtifact: anObject

	| editor object |
	"Reuse windows if modifier pressed."
	(self currentEvent in: [:evt | evt isKeyboard | evt isMouse and: [evt shiftPressed]])
		ifTrue: [
			(self toolWindows detect: [:wnd | wnd editor includesObject: anObject] ifNone: [])
				ifNotNil: [:wnd | wnd activate. wnd editor focusObject: anObject. ^ self]].
	
	object := anObject.
		
	self flag: #evaluate. "mt: Unwrap name bindings."
	(self currentEvent in: [:evt | evt isDropEvent and: [evt contents shouldCopy]])
		in: [:evaluateObject | "Unbox bindings, e.g. #a -> aMorph."
			object := evaluateObject ifTrue: [anObject value] ifFalse: [anObject]].

	(object isKindOf: ViShallowException) ifTrue: [
		^ self openDebugger: (ViShallowDebugger on: object)].

	(object isKindOf: ViEditorState) ifTrue: [
		^ self openEditor: object].

	^ ViMultiPaneEditor open: #artifacts for: ((ViQueryInterpreter isCollection: object)
		ifTrue: [object]
		ifFalse: [{object}])