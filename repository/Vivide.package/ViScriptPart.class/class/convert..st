support
convert: object

	^ object isSymbol
		ifFalse: [object isNumber
				ifTrue: [object] ifFalse: [object isVariableBinding
			ifFalse: [object asScript]
			ifTrue: [
				"Set the given associations as properties: [:n | n * n] -> {#foo -> 5. #bar -> 7}"
				(self convert: object key) in: [:s |
					"Do not overwrite the properties of default scripts."
					(s isDefault ifTrue: [s asReference] ifFalse: [s]) in: [:script |
						script notifier doSilently: [
							object value do: [:property |
								script setProperty: property key toValue: property value]].
						script]]]]]
		ifTrue: [super convert: object]