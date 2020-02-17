accessing
label: aString

	label = aString ifTrue: [^ self].

	label in: [:oldLabel |
		label := aString.
		
		self notifier
			step: self
			properties: {#label -> oldLabel}
			changedTo:{#label -> self label}].