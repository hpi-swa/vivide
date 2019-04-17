tests
test15ExtractPropertiesWithObject
	"Check that extraction steps can also transform objects using #object property."

	| script default interpreter |
	script := {
		[:num | num * num].
		[:num | #text -> num asString. #object -> (num * num)].
		[:num | num - 2] -> { #id -> #stop }.
		[:num | #text -> num asString].
	} asScript.
	interpreter := ViScriptInterpreter on: script using: #(2 3).

	interpreter upToExtraction.
	self
		assert: #stop equals: interpreter next id;
		assert: #(16 81) equals: interpreter objects asArray.
			
	interpreter upToExtraction.
	self
		assert: interpreter atEnd;
		assert: #(14 79) equals: interpreter objects asArray.