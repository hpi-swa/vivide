collection handling
productOfCollections: someCollections
	"Cartesian product?"
	
	| tmp |
	someCollections ifEmpty: [^ #()].
	
	self assert: (ViQueryInterpreter isCollection: someCollections).
	
	tmp := someCollections withIndexCollect: [:o :i |
		(ViQueryInterpreter isCollection: o)
			ifTrue: [o ifEmpty: [^ #()] ifNotEmpty: [o]]
			ifFalse: [{o}]].

	"Algorithm thanks to Michael Grünewald, 09-06-2014"
	^ tmp inject: #(()) into: [:a :b | (a collect: [:i | b collect: [:j | i copyWith: j]]) reduce: #,]