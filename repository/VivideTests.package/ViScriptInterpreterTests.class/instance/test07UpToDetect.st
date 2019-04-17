tests
test07UpToDetect

	| script interpreter |
	script := {
		[:number | number * number] -> { #id -> #one }.
		[:number | number + number] -> { #id -> #two }.
		[:number | #text -> number asString] -> { #id -> #three }.
	} asScript.
	interpreter := ViScriptInterpreter on: script using: #(1 2 3 4).

	interpreter upToDetect: [:step | step id = #one].
	self
		assert: #two equals: interpreter next id;
		assert: #(1 4 9 16) "result of #one" equals: interpreter objects asArray.
		
	interpreter upToDetect: [:step | step id = #two].
	self
		assert: #three equals: interpreter next id;
		assert: #(2 8 18 32) equals: interpreter objects asArray;
		deny: interpreter atEnd.