public
serialize

	self
		serializeProfile;
		prepareSerialization;
		serializeSteps;
		serializeCommands;
		serializeDefinitions.
		
	self tidyArchive.

	^ archive theNonMetaClass