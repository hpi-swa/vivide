as yet unclassified
test30AsQuery

	[:num | num * num] asQuery in: [:query |
		self
			assert: query isTransformStep;
			assert: query definition mapType = #each;
			assert: query definition inputKind = Object;
			assert: query definition outputKind = Object].
	[#(1 2 3)] asQuery in: [:query |
		self
			assert: query isTransformStep;
			assert: query definition mapType = #all;
			assert: query definition inputKind = Object;
			assert: query definition outputKind = Object].
	[:num | #text -> num asString] asQuery in: [:query |
		self
			assert: query isPropertyStep;
			assert: query definition inputKind = Object].
	[:num | {#text -> num asString}] asQuery in: [:query |
		self
			assert: query isPropertyStep;
			assert: query definition inputKind = Object].