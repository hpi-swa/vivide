system triggers
mapTypeChanged: mapDef from: oldType to: newType

	self trigger: ((ViModifiedMapDefinitionEvent item: mapDef kind: self class mapDefinitionKind)
		oldItem: {
			mapDef sourceCode.
			oldType.
			mapDef inputKind.
			mapDef outputKind})