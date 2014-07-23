do-its
evaluateSelectionAndDo: aBlock

	| result b |
	b := [:obj | 
		self
			logScript: self selection asString
			receiver: model doItReceiver
			context: model doItContext
			result: obj.	
		aBlock value: obj].
	
	self morph expressionAboutToBeEvaluated.
	result := super evaluateSelectionAndDo: b.
	self morph expressionEvaluated: result.  
	^ result  