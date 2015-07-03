triggers for steps
stepNotEvaluated: aQueryStep becauseOf: anException

	self trigger: ((ViNotEvaluatedStepEvent item: aQueryStep kind: self class stepKind)
		context: anException;
		yourself).		