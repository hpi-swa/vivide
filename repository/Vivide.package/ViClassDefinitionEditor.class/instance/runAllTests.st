actions
runAllTests

	| results |
	results := self theClass buildSuite run.
	
	results hasErrors | results hasFailures
		ifTrue: [
			self warningSent: results asString.
			results explore]
		ifFalse: [self informationSent: results asString].
		
	ViAnimatedImageMorph
		flyOutOn: self
		with: (results hasErrors | results hasFailures
			ifTrue: [UiFugueIcons crossIcon]
			ifFalse: [UiFugueIcons tickIcon]).
	
	results updateResultsInHistory.