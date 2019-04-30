navigation
lookupSymbolAsDefinition: aSymbol
	"Not intended for frequent use. Work with instances of ViScriptStep and #asScript instead."

	ViScriptOrganizer active ifNotNil: [:organization |
		(organization definitionById: aSymbol) ifNotNil: [:script | ^ script]].

	ViProfile active ifNotNil: [:profile |
		(profile organization definitionById: aSymbol) ifNotNil: [:script | ^ script]].

	VivideLight active ifNotNil: [:vivide |
		(vivide profile organization definitionById: aSymbol) ifNotNil: [:script | ^ script]].
	
	VivideLight defaultScriptOrganization ifNotNil: [:organization |
		(organization definitionById: aSymbol) ifNotNil: [:script | ^ script]].
	
	^ nil "Not found."