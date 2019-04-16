tests
test09FlattenInput

	| q |
	q := [:morph | morph color] asScript.
	sut := ViScriptInterpreter on: q using: {{Morph new. Morph new}. {Morph new. Morph new}}.

	"There is no auto-magic flattening of input here."
	self
		should: [sut upToEnd]
		raise: Error.