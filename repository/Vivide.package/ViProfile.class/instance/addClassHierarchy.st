as yet unclassified
addClassHierarchy

	self addScript: {
		[:class | class withAllSuperclasses reversed] -> {
			#inputKind -> ClassDescription. #outputKind -> ClassDescription.
			#view -> ViTreeView.
			#label -> 'Class Hierarchy'.
			#priority -> 45}.
		[#defaultProperties] -> {#isReference -> true}.
		[:class | class subclasses].
		2
	} asScript.