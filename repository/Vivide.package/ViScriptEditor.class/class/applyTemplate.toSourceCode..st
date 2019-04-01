as yet unclassified
applyTemplate: aTemplateOrSymbol toSourceCode: aString
	" For example
		(45 to: 62) -> '[:in :out | (
			[:objects | objects collect: [:object | object]]
				value: in) do: [:result | out addAll: result asList]]'
	or
		#standard
	can be applied to
		'[:num | num + num]' "

	| template |
	template := aTemplateOrSymbol isSymbol
		ifFalse: [aTemplateOrSymbol]
		ifTrue: [self perform: ('template', aTemplateOrSymbol asString withFirstCharacterUppercase) asSymbol].

	^ (template value first: template key first - 1),
		aString,
		(template value last: template value size - template key last)