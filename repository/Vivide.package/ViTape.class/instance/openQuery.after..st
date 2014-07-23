actions - open
openQuery: oneOrMoreObjects after: anEditor

	| editor list allSame |
	list := ((oneOrMoreObjects isString not and: [oneOrMoreObjects isCollection])
		ifTrue: [oneOrMoreObjects "list of objects"]
		ifFalse: [{oneOrMoreObjects}]).
	allSame := list allSatisfy: [:obj | obj isBehavior or: [obj class == list first class]].

	self flag: #ugly. "mt: find another way to determine the editor state."
	((allSame and: [list size > 1]) and: [list first isCompiledMethod or: [list first isKindOf: MethodReference]])
		ifTrue: [allSame := false].

	editor := (self
		addEditorFromState: ((allSame
			ifTrue: [ViEditorStateLookupService new editorClass: ViObjectListEditor; doObject: list first]
			ifFalse: [ViEditorStateLookupService defaultStateFor: ViObjectListEditor])
				objects: list)
		after: anEditor).
	
	^ editor
