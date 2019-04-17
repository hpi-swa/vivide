tests - tuples and groups
test03TuplesInObjects
	"Check whether #objects keeps track of the tuples after property extraction where #object is only part of the tuple."
	
	| script interpreter |
	script := {
		[:num | { {num. num even} }].
		[:num :bool | #text -> num asString]. "See also script-template tests."
	} asScript.
	interpreter := ViScriptInterpreter on: script using: #(1 2 3 4).
	interpreter upToEnd.
	
	self
		assert: #( (1 false) (2 true) (3 false) (4 true) ) equals: interpreter objects asArray;
		assert: #( (1 false) ) equals: ( (interpreter propertiesFor: #(1 false) ) at: #objects); "Tuple has to be wrapped to avoid flattening."
		assert: 1 equals: ( (interpreter propertiesFor: #(1 false) ) at: #object). "The #object is only the first part of the tuple."