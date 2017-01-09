as yet unclassified
exploreOutputTrace

	| result |
	result := OrderedCollection with: self originalInput.

	self firstStep stepsDo: [:s |
		(self interpretUpToDetect: [:sc | sc == s]) ifNotNil: [:interpreter |
			result add: (interpreter objects at: #all)].
		s == self object ifTrue: [^ result explore]].
	
	Error signal: 'Should not happen.'.