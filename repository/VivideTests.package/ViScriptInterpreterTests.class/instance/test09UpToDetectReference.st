tests
test09UpToDetectReference

	| inner outer interpreter |
	inner := {
		[:number | number * number].
		[:number | number + number].
	} asScript.
	outer := inner asReference.
	outer adoptOrganization: inner organization.
	outer next: ([:number | #text -> number asString] asScript
					adoptOrganization: outer organization;
					yourself).
	
	interpreter := ViScriptInterpreter on: outer using: #(1 2 3 4).
	
	interpreter upToDetect: [:step | step = outer].
	
	self
		deny: interpreter atEnd;
		assert: interpreter next isPropertyExtraction;
		assert: #(2 8 18 32) "result of inner script" equals: interpreter objects asArray.