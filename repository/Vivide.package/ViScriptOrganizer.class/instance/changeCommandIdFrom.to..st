organization - commands
changeCommandIdFrom: oldId to: newId

	(self commands removeKey: oldId ifAbsent: [^ self]) in: [:step |
		self commands at: newId put: step].