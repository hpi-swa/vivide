as yet unclassified
stepPropertiesChanged: aQueryStep from: oldProps to: newProps

	self trigger: ((ViModifiedStepEvent item: aQueryStep kind: self class stepKind)
		oldItem: {aQueryStep. newProps. oldProps}).