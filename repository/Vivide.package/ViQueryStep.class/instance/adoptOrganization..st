as yet unclassified
adoptOrganization: aQueryOrganizer

	self allSteps "collect all first!" do: [:step |
		(step isDefault not and: [step organization ~~ aQueryOrganizer]) ifTrue: [

			(aQueryOrganizer stepById: step id) ifNotNil: [:result |
				self assert: step ~~ result.
				Transcript cr; show: '[ViQueryStep] Script not adopted because ID was already present in target organization.'.
				] ifNil: [
					step
						unregister;
						organization: aQueryOrganizer;
						register]]]	