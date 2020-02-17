convert
importStep: dict
	"Workaround to trigger notification of changed source code -- if the definition existed before."
	
	| step definition oldCode |
	self flag: #refactor.
	
	step := self mergeStep: dict.

	(step organization definitionById: (dict at: #definition))
		ifNotNil: [:def | oldCode := def sourceCode].
	
	"Load current definition properties."
	definition := self mergeDefinition: (dict at: #'_def').
	oldCode ifNotNil: [
		"Reset old code."
		definition sourceCode: oldCode.
		"Trigger code change notification."
		step sourceCode: ((dict at: #'_def') at: #sourceCode)].	

	^ step