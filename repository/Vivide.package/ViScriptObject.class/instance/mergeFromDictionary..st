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
			
			"If de-serialization failed somehow, remove nil-values from properties."
			self properties keys do: [:key |
				(self properties at: key)
					ifNil: [self properties removeKey: key]].
		]