collection handling
productOfCollections: someCollections
	"Cartesian product?"
	
	| tmp |
	tmp := someCollections collect: [:o | o asList].	
	
	tmp ifEmpty: [^ #()].
	
	(tmp anySatisfy: [:ea | ea isEmpty])
		ifTrue: [^ #()].
	
	"Algorithm thanks to Michael Grünewald, 09-06-2014"
	^ tmp inject: #(()) into: [:a :b | (a collect: [:i | b collect: [:j | i copyWith: j]]) reduce: #,]