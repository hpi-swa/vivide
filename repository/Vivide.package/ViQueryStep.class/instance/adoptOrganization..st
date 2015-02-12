as yet unclassified
adoptOrganization: aQueryOrganizer

	(aQueryOrganizer ~~ ViQueryOrganizer active and: [self isDefault])
		ifTrue: [Error signal: 'Must not adopt a default script!'].
		
	self allSteps "collect all first!" do: [:step |
		step organization == aQueryOrganizer ifFalse: [

			(aQueryOrganizer stepById: step id) ifNotNil: [:result |
				self assert: step ~~ result.
				Transcript cr; show: '[AdoptOrganization] Script ignored because ID was already there.'.
				
				] ifNil: [
					step
						unregister;
						organization: aQueryOrganizer;
						register]]]	