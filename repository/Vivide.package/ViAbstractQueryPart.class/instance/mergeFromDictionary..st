serialization
mergeFromDictionary: dict

	self class ~~ (dict at: #class)
		ifTrue: [
			| instance |
			instance := (dict at: #class) new.
			instance mergeFromDictionary: dict.
			self notifier doSilently: [
				instance id: (dict at: #id).
				instance organization: self organization.
			].
			self becomeForward: instance.
		]
		ifFalse: [
			self properties: (dict at: #properties).
		]