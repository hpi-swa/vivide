as yet unclassified
stepEvaluated: aQueryStep

	self trigger: (ViEvaluatedStepEvent item: aQueryStep kind: self class stepKind).