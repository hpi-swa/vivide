as yet unclassified
definitionPropertiesChanged: definition from: oldProps to: newProps

	self trigger: ((ViModifiedPartPropertiesEvent item: definition kind: self class definitionKind)
		oldItem: {oldProps. newProps}).