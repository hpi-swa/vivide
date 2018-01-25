support
convert: object
	"Adds support for script properties."

	object isSymbol
		ifTrue: [^ super convert: object].
		
	object isNumber "Step references. See #convertList:."
		ifTrue: [^ object].
		
	object isVariableBinding
		ifFalse: [^ object asScript].
	
	"Set the given associations as properties: [:n | n * n] -> {#foo -> 5. #bar -> 7}"
	^ (self convert: object key) in: [:s |
		"Do not overwrite the properties of default scripts."
		(s isDefault ifTrue: [s asReference] ifFalse: [s]) in: [:script |
			script notifier doSilently: [
				object value do: [:property |
					script setProperty: property key toValue: property value]].
			script]]