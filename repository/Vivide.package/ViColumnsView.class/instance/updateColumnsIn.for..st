as yet unclassified
updateColumnsIn: column for: someNodes

	someNodes ifEmpty: [
		self widget submorphsBehind: column do: [:m | m delete].
		^ self].

	someNodes first in: [:node |
		self widget submorphsBehind: column do: [:m |
			m model: node.
			^ self].
				
		self addColumnFor: someNodes first.
		"self columns last grabKeyboard."
	].