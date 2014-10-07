collection handling
unpackTuples: packedTuples

	| result |
	result := OrderedCollection new.
	packedTuples do: [:tuple |
		tuple last do: [:tail |
			result add: {tuple first}, tail]].
	^ result asArray