triggers for steps
stepEvaluated: aQueryStep

	self trigger: (ViEvaluatedStepEvent item: aQueryStep kind: self class stepKind).