convert
importStep: dict
	"Workaround to trigger notification of changed source code."
	
	| step definition oldCode |
	self flag: #refactor.
	
	step := self mergeStep: dict.
	oldCode := step sourceCode.
	
	"Load definition properties."
	definition := self mergeDefinition: (dict at: #'_def').
	definition sourceCode: oldCode.
	step sourceCode: ((dict at: #'_def') at: #sourceCode).	

	^ step