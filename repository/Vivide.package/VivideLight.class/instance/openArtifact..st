actions - open
openArtifact: anObject

	| object |
	"Reuse windows if modifier pressed."
	(self currentEvent in: [:evt | evt isKeyboard | evt isMouse and: [evt shiftPressed]])
		ifTrue: [
			self world doOneSubCycle. "Ensure all tool windows to be opened by now."
			(self toolWindows detect: [:wnd | wnd editor includesObject: anObject] ifNone: [])
				ifNotNil: [:wnd | wnd activate. wnd editor focusObject: anObject. ^ self]].
	
	object := anObject.
		
	self flag: #evaluate. "mt: Unwrap name bindings."
	(self currentEvent in: [:evt | evt isDropEvent and: [evt contents hasFlag: #evaluate]])
		in: [:evaluateObject | "Unbox bindings, e.g. #a -> aMorph."
			object := evaluateObject ifTrue: [anObject value] ifFalse: [anObject]].

	(object isKindOf: ViEditorState) ifTrue: [
		^ self openEditor: object].
	
	(object isScript) ifTrue: [
		object steps in: [:steps |
		"See behavior of ViScriptEditor >> #onContextChanged."
			steps size > 1 ifTrue: [^ self openArtifacts: steps].
			object retain]].

	^ VivideLight useClassicMode
		ifTrue: [ViPane chooseAndOpenScriptWith: {object}]
		ifFalse: [self openScript: #artifacts withObjects: {object}]