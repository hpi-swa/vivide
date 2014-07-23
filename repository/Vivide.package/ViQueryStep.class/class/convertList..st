as yet unclassified
convertList: someObjects
		
	^ (someObjects collect: [:o | self convert: o])
		in: [:steps |
			steps overlappingPairsDo: [:s1 :s2 | s1 next: s2].
			steps first]