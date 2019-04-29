organization
adoptOrganization: aScriptOrganizer
	"Take my definition with me."

	"super adoptOrganization: aScriptOrganizer."
	
	self allSteps "collect all first!" do: [:step | step isDefault not ifTrue: [

		"	(aQueryOrganizer stepById: step id) ifNotNil: [:result |
				self assert: step ~~ result.
				Transcript cr; show: '[ViQueryStep] Script not adopted because ID was already present in target organization.'.
				] ifNil: ["
					step
						unregister;
						organization: aScriptOrganizer;
						register.
					step definition adoptOrganization: aScriptOrganizer.
						
						]].