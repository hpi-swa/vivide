public
serialize

	self
		serializeProfile;
		prepareSerialization;
		serializeSteps;
		serializeStepsOrder;
		serializeCommands;
		serializeCommandsOrder;
		serializeDefinitions.
		
	self tidyArchive.

	^ archive theNonMetaClass