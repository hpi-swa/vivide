tests
test21UpToDetect

	| script |
	script := {
		[:number | number * number] -> { #id -> #one }.
		[:number | number + number] -> { #id -> #two }.
	} asScript.
	
	sut := ViQueryInterpreter on: script using: #(1 2 3 4).
	self assert: #(1 2 3 4) equals: sut objects.

	sut upToDetect: [:step :interpreter | step id = #one].
	self
		assert: #two equals: sut currentStep id;
		assert: #(1 4 9 16) "result of #one" equals: sut objects asArray.
		
	sut next.
	self
		assert: #defaultProperties equals: sut currentStep id;
		assert: #(2 8 18 32) equals: sut objects asArray.