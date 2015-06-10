as yet unclassified
bindingOf: aString

	^ (self model ifNotNil: [:m | m firstNode at: #workspace ifAbsent: [^ nil]])
		bindingOf: aString