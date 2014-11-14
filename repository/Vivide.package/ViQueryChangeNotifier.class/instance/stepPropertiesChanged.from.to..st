as yet unclassified
stepPropertiesChanged: aQueryStep from: oldProps to: newProps

	self trigger: ((ViModifiedPartPropertiesEvent item: aQueryStep kind: self class stepKind)
		oldItem: {oldProps. newProps}).