as yet unclassified
selectInGraphFromMethods: someMethods thatAccess: someInstVars

	| edges |
	edges := Set new.

	someMethods do: [:a | someMethods do: [:b | a ~~ b ifTrue: [

		(((a referredInstVars
			intersection: b referredInstVars)
			intersection: someInstVars) notEmpty
				or: [(a hasLiteral: b selector) or: [b hasLiteral: a selector]])
		ifTrue: [edges add: (IdentitySet new add: a; add: b; yourself)]]]].
			
	^ edges