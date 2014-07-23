actions
runTest

	| results |
	(self method notNil and: [self method isTestMethod])
		ifFalse: [^ self].
		
	results := self theClass run: self selector.
	
	results hasErrors | results hasFailures
		ifTrue: [
			self warningSent: results asString.
			self theClass debug: self selector]
		ifFalse: [self informationSent: results asString].

	ViAnimatedImageMorph
		flyOutOn: self
		with: (results hasErrors | results hasFailures
			ifTrue: [UiFugueIcons crossIcon]
			ifFalse: [UiFugueIcons tickIcon]).
	
	results updateResultsInHistory.

	self updateToolbars.