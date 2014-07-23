actions
useNewCode

	self currentUpdateSetDefinition: (ViQueryUpdateDefinition new
		sourceCode: self currentUpdateSetDefinition sourceCode copy;
		organization: self currentUpdateSetDefinition organization;
		properties: self currentUpdateSetDefinition properties copy;
		setCreationInformation;
		yourself).
		
	self currentUpdateClearDefinition: (ViQueryUpdateDefinition new
		sourceCode: self currentUpdateClearDefinition sourceCode copy;
		organization: self currentUpdateClearDefinition organization;
		properties: self currentUpdateClearDefinition properties copy;
		setCreationInformation;
		yourself).