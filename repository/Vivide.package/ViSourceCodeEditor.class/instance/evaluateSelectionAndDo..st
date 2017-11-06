do-its
evaluateSelectionAndDo: aBlock

	| result b |
	self lineSelectAndEmptyCheck: [^ nil].
	
	b := [:obj | 
		self
			logScript: self selection asString
			receiver: model doItReceiver
			context: model doItContext
			result: obj.	
		aBlock value: obj].
	
	self morph expressionAboutToBeEvaluated: self selection asString.
	result := super evaluateSelectionAndDo: b.
	self morph expressionEvaluated: result.  
	^ result  