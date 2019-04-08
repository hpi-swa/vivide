as yet unclassified
viewExpectedPropertiesReceivers: receiverTerms accessor: accessorSymbol iterator: iteratorSymbol

	| result merged receiverCheck |
	result := OrderedCollection new.
	receiverCheck := [:recv |
		receiverTerms anySatisfy: [:term |
			(recv isVariable and: [recv name includesSubstring: term caseSensitive: false])
				or: [(recv isMessage and: [recv selector includesSubstring: term caseSensitive: false])]]].
	
	(self allSteps first viewClass withAllSuperclasses copyWithoutAll: Morph withAllSuperclasses) do: [:cls |
		cls methodDict values do: [:method |
			([RBParser parseMethod: method getSource asString onError: [:what :where | Error signal]] on: Error do: [:ex | "Ignore"]) ifNotNil: [:node |
				node nodesDo: [:n |
					(((n isMessage
						and: [n selector beginsWith: accessorSymbol])
						and: [n arguments first isLiteral])
						and: [receiverCheck value: n receiver])
								ifTrue: [
							
										result add: n arguments first value -> nil.
										
										n arguments size = 2 ifTrue: [ | argNode |
										argNode := n arguments second.
										"Find default argument."
										argNode isLiteral
											ifTrue: [result last value: argNode value] "at: #foo ifAbsent: #bar"
											ifFalse: [((argNode isBlock and: [argNode body statements notEmpty]) and: [argNode body statements first isLiteral])
												ifTrue: [result last value: argNode body statements first value]] "at: #foo ifAbsent: [#bar]"]
										].
						
								
					"Standard Item View Object Properties"
					((n isMessage and: [n receiver isLiteralArray]) and: [n selector beginsWith: iteratorSymbol])
						ifTrue: [result addAll: (n receiver value collect: [:ea | ea -> nil])]
								
								]]]].
	merged := Dictionary new.
	result do: [:ea |
		merged at: ea key put: ((merged at: ea ifAbsent: []) ifNil: [ea value])].
	^ merged associations sorted: [:a :b | a key <= b key]	