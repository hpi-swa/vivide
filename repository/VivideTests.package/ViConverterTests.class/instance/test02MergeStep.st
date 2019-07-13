tests
test02MergeStep

	| step dict |
	step := converter extractSteps anyOne.
	dict := step asDictionary.
	self deny: (step valueOfProperty: #shouldNotExist) = #something.

	(dict at: #properties) at: #shouldNotExist put: #something.
	converter mergeStep: dict.	
	self assert: (step valueOfProperty: #shouldNotExist) = #something.