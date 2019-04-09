tests
test24EmptyInput
	"Script interpretation should only stop on empty output, not input."
	
	| script |
	script := {
		[:num | nil].
		[:in :out | 
			self assert: in isEmpty.
			out add: 42].
	} asScript.
	
	sut := ViQueryInterpreter on: script using: #(1 2 3).
	sut upToNextProperties.
	
	self
		assert: #(42)
		equals: sut objects asArray.