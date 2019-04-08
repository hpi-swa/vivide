accessing - script
checkAllStepsConnected

	self allSteps overlappingPairsDo: [:s1 :s2 |
		s1 next == s2 ifFalse: [
			self warningSent: 'Some steps are not connected. Fix that first.'.
			^ false]].
	^ true