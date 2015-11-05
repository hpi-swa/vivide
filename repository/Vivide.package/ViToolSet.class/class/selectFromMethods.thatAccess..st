as yet unclassified
selectFromMethods: someMethods thatAccess: instVarName

	| result rest found |
	result := (someMethods select: [:m | m referredInstVars includes: instVarName]) asOrderedCollection.
	rest := (someMethods copyWithoutAll: result) asOrderedCollection.

	found := #(1).

	[found notEmpty] whileTrue: [
		found := OrderedCollection new.
		rest doWithIndex: [:ea :i |
			(result anySatisfy: [:target | ea hasLiteral: target selector. "ea sendsSelector: target selector"])
				ifTrue: [found add: i. result add: ea]].
		found reverseDo: [:i | rest removeAt: i]].

	^ result