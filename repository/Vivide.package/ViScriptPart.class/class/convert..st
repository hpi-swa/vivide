support
convert: object

	^ object isSymbol
		ifFalse: [object isNumber
				ifTrue: [object] ifFalse: [object isVariableBinding
			ifFalse: [object asScript]
			ifTrue: [
				"Set the given associations as properties: [:n | n * n] -> {#foo -> 5. #bar -> 7}"
				(self convert: object key) in: [:script |
					object value do: [:property |
						script setProperty: property key toValue: property value].
					script]]]]
		ifTrue: [super convert: object]