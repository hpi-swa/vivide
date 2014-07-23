system triggers
definitionRegistered: def

	self trigger: (ViAddedPartEvent item: def kind: (true caseOf: {
		[def isMapDefinition] -> [self class mapDefinitionKind].
		[def isUpdateDefinition] -> [self class updateDefinitionKind].
		[def isViewDefinition] -> [self class viewDefinitionKind]}
			otherwise: [^ self "Ignore. Used in tests."])).