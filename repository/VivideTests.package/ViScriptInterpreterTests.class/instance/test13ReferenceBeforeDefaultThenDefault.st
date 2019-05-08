tests - references and stack
test13ReferenceBeforeDefaultThenDefault
	"Check whether the implicit #defaultProperties are inserted even if there is #defaultProperties referenced #before."
	
	| default script interpreter |
	default := { [:num | #text -> ('test ', num asString)] -> { #id -> #defaultProperties } } asScript.

	script := { [:num | num + 1] -> { #before -> #defaultProperties } } asScript.
	script adoptOrganization: default organization.
	
	interpreter := ViScriptInterpreter on: script using: #(1).
	
	interpreter upToExtraction.
	self assert: 'test 1'  equals: ((interpreter propertiesFor: 1) at: #text).

	interpreter upToExtraction.
	self assert: 'test 2'  equals: ((interpreter propertiesFor: 2) at: #text).