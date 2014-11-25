updating
updateFromQueryEvaluation: evt
	
	self model firstStep allStepsDo: [:step |
		step == evt item ifTrue: [
			evt hasFailed 
				ifTrue: [
					self errorBtn
						setProperty: #error toValue: evt context;
						balloonText: evt context description;
						comeToFront;
						topRight: self topRight;
						fadeIn]
				ifFalse: [self clearError].
			]].