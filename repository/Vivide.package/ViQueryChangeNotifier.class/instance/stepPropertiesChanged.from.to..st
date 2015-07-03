triggers for steps
stepPropertiesChanged: step from: oldProps to: newProps

	self trigger: ((ViModifiedPartPropertiesEvent
		item: step
		kind: self class stepKind)
		oldItem: {oldProps. newProps}).