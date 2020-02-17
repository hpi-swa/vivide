initialization - scripts
addClassHierarchy

	self addScript: {
		[:class | {Object. class} asTuples] -> {
			#inputKind -> ClassDescription.
			#view -> ViTreeView.
			#label -> 'Class Hierarchy'.
			#id -> #classHierarchy.
			#expandAll -> true.
			#priority -> 45}.
		[:class :filter | {
			#icon -> (ViIconService doObject: class).
			#text -> (ViLabelService doObject: class).
			#tooltip -> [ViObjectPreviewHandler doObject: class] }].
		[:class :filter | {#text -> (ViObjectOriginService doObject: class)} ].		
		[:class :filter | {
			(class includesBehavior: filter)
				ifTrue: [class subclasses]
				ifFalse: [class subclasses detect: [:cls | filter includesBehavior: cls]].
			filter } asTuples].
		2
	} asScript