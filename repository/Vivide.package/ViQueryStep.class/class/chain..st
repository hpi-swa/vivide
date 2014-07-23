as yet unclassified
chain: someObjects

	^ (someObjects collect: [:obj | self convert: obj])
		overlappingPairsDo: [:s1 :s2 | s1 next: s2];
		first