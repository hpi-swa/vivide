tests
test22UpToDetectReference

	| scriptOne scriptTwo |
	scriptTwo := {
		[:number | number * number] -> { #id -> #one }.
		[:number | number + number] -> { #id -> #two }.
	} asScript.
	
	scriptOne := scriptTwo asReference.
	scriptOne id: #outer.
	scriptOne adoptOrganization: organization.
	
	sut := ViQueryInterpreter on: scriptOne using: #(1 2 3 4).
	self assert: #(1 2 3 4) equals: sut objects.

	sut upToDetect: [:step :interpreter | step id = #outer].
	self
		assert: #defaultProperties equals: sut currentStep id;
		assert: #(2 8 18 32) "result of #two" equals: sut objects asArray.