updating
triggerChangeContext: index

	self removeAlarm: #contextStackIndex:.

	self world ifNil: [^ self contextStackIndex: index].

	self
		addAlarm: #contextStackIndex:
		withArguments: {index}
		after: 250.