convert
importOrganization

	self importAllDefinitions. "For steps and commands."
	
	self importAllSteps.
	self importAllCommands.

	self cleanUpOrganization.