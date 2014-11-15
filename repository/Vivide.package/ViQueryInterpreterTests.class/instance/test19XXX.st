as yet unclassified
test19XXX

	| script |
	script := {
		[:n | n * n].
		[:n | {#text -> n asString. #even -> n even}]
	} asScript.
	sut := ViQueryInterpreter on: (ViQueryStep use: #(1 2 3) in: script).
	self halt.