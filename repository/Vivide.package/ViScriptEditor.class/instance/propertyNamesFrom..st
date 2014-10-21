as yet unclassified
propertyNamesFrom: arrayNode
	"{ #view -> ViTreeView . #author -> 'mt'}"

	^ (self propertiesToIgnore keys select: [:key | (self propertiesToIgnore at: key) isNil]) in: [:ignore | 
		(arrayNode statements
			reject: [:msg | ignore includes: msg receiver value])
			collect: [:msg | msg arguments first isVariable
				ifTrue: [msg arguments first name]
				ifFalse: [msg arguments first isValue
					ifTrue: [msg arguments first value isString
						ifTrue: [(msg arguments first value isSymbol ifTrue: ['#'] ifFalse: ['']),'''', msg arguments first value, '''']
						ifFalse: [msg receiver value]]
					ifFalse: [msg receiver value]]]]