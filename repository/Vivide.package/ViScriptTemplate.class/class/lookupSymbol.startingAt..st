navigation
lookupSymbol: aSymbol startingAt: aScriptOrganization

	(aScriptOrganization stepById: aSymbol) ifNotNil: [:script | ^ script].

	^ self lookupSymbol: aSymbol