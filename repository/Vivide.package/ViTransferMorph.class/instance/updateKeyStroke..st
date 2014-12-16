as yet unclassified
updateKeyStroke: evt

	self flagSpecs do: [:spec |
		spec first = evt keyCharacter ifTrue: [
			^ self
				updateFlag: spec third
				description: spec second
				value: (self hasFlag: spec third) not]]