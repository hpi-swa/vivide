as yet unclassified
defaultScriptOrganization
	"Independent of any dynamic scope, return the script organization that is reachable through the current Vivide profile."
	
	^ (ActiveVivide ifNotNil: #profile) ifNotNil: #organization