as yet unclassified
doClickAt: buttonIndex

	self model ifNil: [^ self].

	self model nodes do: [:node |
		(node at: buttonIndex asString, '_clicked' ifAbsent: []) value].