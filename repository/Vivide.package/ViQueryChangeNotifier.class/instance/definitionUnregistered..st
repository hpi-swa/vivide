system triggers
definitionUnregistered: def

	self trigger: (ViRemovedPartEvent item: def kind: (true caseOf: {
		[def isMapDefinition] -> [self class mapDefinitionKind].
		[def isUpdateDefinition] -> [self class updateDefinitionKind].
		[def isViewDefinition] -> [self class viewDefinitionKind]}
		otherwise: [^ self "Ignore. Used in tests."])).