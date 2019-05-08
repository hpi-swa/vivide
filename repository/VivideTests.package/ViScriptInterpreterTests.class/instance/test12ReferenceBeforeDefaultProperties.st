tests - references and stack
test12ReferenceBeforeDefaultProperties
	"Check whether the implicit #defaultProperties are inserted even if there is an extraction (level) before."
	
	| far default script interpreter |
	default := { [:num | #text -> ('test ', num asString)] -> { #id -> #defaultProperties } } asScript.

	far := { [:num | #text -> ('far ', num asString)] -> { #id -> #far } } asScript.	
	far adoptOrganization: default organization.
	script := { [:num | num + 1] -> { #before -> #far } } asScript.
	script adoptOrganization: default organization.
	
	interpreter := ViScriptInterpreter on: script using: #(1).
	
	interpreter upToExtraction.
	self assert: 'far 1'  equals: ((interpreter propertiesFor: 1) at: #text).

	interpreter upToExtraction.
	self assert: 'test 2'  equals: ((interpreter propertiesFor: 2) at: #text).