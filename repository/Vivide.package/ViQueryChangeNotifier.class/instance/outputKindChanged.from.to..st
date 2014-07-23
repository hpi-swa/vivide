system triggers
outputKindChanged: mapDef from: oldKind to: newKind

	self trigger: ((ViModifiedMapDefinitionEvent item: mapDef kind: self class mapDefinitionKind)
		oldItem: {
			mapDef sourceCode.
			mapDef mapType.
			mapDef inputKind.
			oldKind})