as yet unclassified
adoptOrganization: aQueryOrganizer
	"Take my definition with me."

	super adoptOrganization: aQueryOrganizer.
	
	self flag: #duplicateCheckMissing. "mt: See implementation of ViQueryStep. Should be also warn about id clashes here?"
	self allStepsDo: [:step |
		step organization == aQueryOrganizer ifTrue: [
			step definition adoptOrganization: aQueryOrganizer]].