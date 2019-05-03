initialization - scripts
addClassHierarchy

	self addScript: {
		[:class | class withAllSuperclasses reversed] -> {
			#inputKind -> ClassDescription. #outputKind -> ClassDescription.
			#view -> ViTreeView.
			#label -> 'Class Hierarchy'.
			#priority -> 45}.
		#defaultPropertiesExtended.
		[:class | class subclasses].
		2
	} asScript.