initialization
setCreationInformation

	self properties
		at: #creationAuthor put: Utilities authorInitials;
		at: #creationTimeStamp put: TimeStamp now asString.