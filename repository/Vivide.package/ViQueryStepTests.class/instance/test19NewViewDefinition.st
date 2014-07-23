tests
test19NewViewDefinition
	"Favor identity over contents."
	
	| q1 |
	q1 := ViQueryStep collect: '[:ea | ea * ea]'.
	q1 viewDefinition: (ViQueryViewDefinition new
		sourceCode: ViQueryStepDefinition treeView sourceCode).
		
	q1 viewDefinition: ViQueryStepDefinition treeView.
	self assert: q1 viewDefinition == ViQueryStepDefinition treeView.