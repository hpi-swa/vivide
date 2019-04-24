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
		"Script identifiers will be treated as references here."
		(object key isSymbol ifTrue: [s asReference] ifFalse: [s]) in: [:script |
			script notifier doSilently: [
				object value do: [:property |
					script setProperty: property key toValue: property value]].
			script]]