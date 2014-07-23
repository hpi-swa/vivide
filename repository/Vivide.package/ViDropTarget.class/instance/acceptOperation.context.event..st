dropping - specific
acceptOperation: aSymbol context: anObject event: evt

	self
		acceptOperation: aSymbol
		context: anObject
		service: (ViArtifactLookupService classForOperation: aSymbol)
		event: evt.