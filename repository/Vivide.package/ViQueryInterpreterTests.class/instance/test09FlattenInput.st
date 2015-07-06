tests
test09FlattenInput

	| q |
	q := [:morph | morph color] asScript.
	sut := ViQueryInterpreter on: (ViQueryStep use: {{Morph new. Morph new}. {Morph new. Morph new}} in: q).

	"There is no auto-magic flattening of input here."
	self
		should: [sut upToEnd]
		raise: Error.