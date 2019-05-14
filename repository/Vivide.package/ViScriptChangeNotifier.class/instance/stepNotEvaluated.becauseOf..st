triggers for steps
stepNotEvaluated: aQueryStep becauseOf: info

	self trigger: ((ViNotEvaluatedStepEvent item: aQueryStep kind: self class stepKind)
		context: info;
		yourself).		