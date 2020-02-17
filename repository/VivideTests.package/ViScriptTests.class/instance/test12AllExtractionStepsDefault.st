tests - enumeration
test12AllExtractionStepsDefault

	| script default |
	script := {
		[:num | num + 1].
		[:num | #text -> num asString] -> { #id -> #one }.
		[:num | num * num].
	} asScript.

	default := { [:object | #text -> ('test ', object asString)] -> { #id -> #defaultProperties }} asScript.
	default adoptOrganization: script organization.	

	self
		assert: #(one defaultProperties)
		equals: (script allExtractionSteps collect: [:ea | ea id]) asArray.