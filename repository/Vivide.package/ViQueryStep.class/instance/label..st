accessing
label: aString

	label = aString ifTrue: [^ self].

	label in: [:oldLabel |
		label := aString.
		
		self notifier
			stepRenamed: self
			from: oldLabel to: label].