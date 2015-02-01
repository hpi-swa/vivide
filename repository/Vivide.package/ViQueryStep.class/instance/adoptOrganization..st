as yet unclassified
adoptOrganization: aQueryOrganizer

	self isDefault ifTrue: [^ self "no change"].
		
	self stepsDo: [:step |
		step organization == aQueryOrganizer ifFalse: [

			(aQueryOrganizer stepById: step id) ifNotNil: [:result |
				self assert: step ~~ result.
				Error signal: 'Duplicate ID! Change or remove first. Then try again.'].

			step
				unregister;
				organization: aQueryOrganizer;
				register]]	