events - script configuration
step: aStep properties: oldProperties changedTo: newProperties

	self trigger: ((ViScriptChangeEvent item: aStep change: #PropertiesChanged)
		oldProperties: oldProperties;
		newProperties: newProperties;
		yourself).