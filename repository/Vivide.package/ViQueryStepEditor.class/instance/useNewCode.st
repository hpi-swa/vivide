actions
useNewCode

	self currentDefinition: (ViQueryMapDefinition new
		mapType: self currentDefinition mapType;
		inputKind: self currentDefinition inputKind;
		outputKind: self currentDefinition outputKind;
		sourceCode: self currentDefinition sourceCode copy;
		organization: self currentDefinition organization;
		properties: self currentDefinition properties copy;
		setCreationInformation;
		yourself).