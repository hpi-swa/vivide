tests - list and script conversion
test14ListAsScriptOrganization
	"All steps are in the same organization."
	
	| script |
	script := {
		[:num | num + 10].
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.
	
	script stepsDo: [:step | self assert: script organization equals: step organization].