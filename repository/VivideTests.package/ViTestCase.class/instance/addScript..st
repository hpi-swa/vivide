support
addScript: scriptOrSpec

	^ scriptOrSpec asScript
		adoptOrganization: organization;
		yourself