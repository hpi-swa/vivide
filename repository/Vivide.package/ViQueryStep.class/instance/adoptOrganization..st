as yet unclassified
adoptOrganization: aQueryOrganizer

	(aQueryOrganizer ~~ ViQueryOrganizer active and: [self isDefault])
		ifTrue: [Error signal: 'Must not adopt a default script!'].
		
	self allSteps "collect all first!" do: [:step |
		step organization == aQueryOrganizer ifFalse: [

			(aQueryOrganizer stepById: step id) ifNotNil: [:result |
				self assert: step ~~ result.
				Transcript cr; show: '[ViQueryStep] Script not adopted because ID was already present in target organization.'.
				] ifNil: [
					step
						unregister;
						organization: aQueryOrganizer;
						register]]]	