as yet unclassified
propertiesToStringFrom: dictionary

	^ (dictionary associations
		inject: '{', String cr
		into: [:r :a |
			r := r, String tab, a key storeString, ' -> ', (a value isBlock ifTrue: [a value decompile decompileString] ifFalse: [a value storeString]), '.', String cr]), '}'