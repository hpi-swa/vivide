tests
test18NewDefinition
	"Favor identity over contents."
	
	| q1 |
	q1 := ViQueryStep property: ViQueryStepDefinition defIconAndLabel sourceCode.
	q1 definition: ViQueryStepDefinition defIconAndLabel.
	self assert: q1 definition == ViQueryStepDefinition defIconAndLabel.