system triggers
inputKindChanged: mapDef from: oldKind to: newKind

	self trigger: ((ViModifiedMapDefinitionEvent item: mapDef kind: self class mapDefinitionKind)
		oldItem: {
			mapDef sourceCode.
			mapDef mapType.
			oldKind.
			mapDef outputKind})