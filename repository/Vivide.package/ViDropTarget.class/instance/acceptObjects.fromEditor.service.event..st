dropping - specific
acceptObjects: someObjects fromEditor: anEditor service: anEditorClass event: evt
	"Create an editor, fill it with objects and drop it."

	| editor allSame |
	allSame := "someObjects allSatisfy: [:obj | obj isBehavior or: [obj class == someObjects first class]]" someObjects size = 1.
	
	self flag: #ugly. "mt: find another way to determine the editor state."
	"(allSame and: [someObjects size > 1] and: [someObjects first isCompiledMethod or: [someObjects first isKindOf: MethodReference]])
		ifTrue: [allSame := false]."
	
	allSame
		ifTrue: [editor := (ViEditorStateLookupService new
			editorClass: anEditorClass;
			doObject: someObjects first)
				ifNil: [anEditorClass new]
				ifNotNil: [:state | anEditorClass newFromState: state]]
		"Do not use a predefined editor state for mixed objects."
		ifFalse: [editor := anEditorClass newFromState:
			(ViEditorStateLookupService new
				editorClass: anEditorClass; defaultState)].

	editor objects: someObjects.

	self dropEditor: editor event: evt.