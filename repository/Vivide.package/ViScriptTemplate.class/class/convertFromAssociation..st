converting
convertFromAssociation: anAssociation
	"Set the given associations as properties: [:n | n * n] -> {#foo -> 5. #bar -> 7}"
	
	| script properties |
	"0) Ignore numbers. See list conversion."
	anAssociation key isNumber ifTrue: [
		^ anAssociation].

	"1) Construct, look up, or wrap script."
	script := anAssociation key asScript.
	"Script identifiers will be treated as references here. Example: (#defaultProperties -> { #foo -> 5 })"
	anAssociation key isSymbol
		ifTrue: [script := script asReference].
	
	"2) Set script properties."
	properties := anAssociation value.
	script notifier doSilently: [
		properties do: [:property |
			script setProperty: property key toValue: property value]].
	
	^ script