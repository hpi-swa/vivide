tests - enumeration
test15NextExtractionStepsDefault

	| script default |
	script := {
		[:num | num * num].
	} asScript.

	default := { [:object | #text -> ('test ', object asString)] -> { #id -> #defaultProperties }} asScript.
	default adoptOrganization: script organization.	

	self
		assert: #(defaultProperties)
		equals: (script nextExtractionSteps collect: [:ea | ea id]) asArray.