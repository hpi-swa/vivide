navigation
lookupSymbol: aSymbol
	"Resolve the given symbol to a script by treating it as identifier in a script organization. By default, use the currently active (maybe dynamically bound) script organization, which may fall back to any (dynamically bound) profile.
	
	If not found, use the default organization in Vivide, if it is running."

	ViScriptOrganizer active ifNotNil: [:organization |
		(organization stepById: aSymbol) ifNotNil: [:script | ^ script]].

	ViProfile active ifNotNil: [:profile |
		(profile organization stepById: aSymbol) ifNotNil: [:script | ^ script]].

	VivideLight active ifNotNil: [:vivide |
		(vivide profile organization stepById: aSymbol) ifNotNil: [:script | ^ script]].
	
	VivideLight defaultScriptOrganization ifNotNil: [:organization |
		(organization stepById: aSymbol) ifNotNil: [:script | ^ script]].
	
	^ nil "Not found."