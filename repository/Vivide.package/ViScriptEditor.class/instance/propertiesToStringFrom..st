as yet unclassified
propertiesToStringFrom: dictionary

	^ ((dictionary associations sort: [:a1 :a2 | a1 key <= a2 key])
		inject: '{', String cr
		into: [:r :a |
			r := r, String tab, a key storeString, ' -> ', (a value isBlock ifTrue: [a value decompile decompileString] ifFalse: [a value storeString]), '.', String cr]), '}'