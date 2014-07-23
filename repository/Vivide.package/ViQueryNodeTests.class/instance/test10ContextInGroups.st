tests
test10ContextInGroups
	"Each group should have its own copy of context."

	| steps |
	steps := OrderedCollection new.
	steps
		add: (ViQueryStep groupBy: '[:assoc | assoc key odd ifTrue: [#odd] ifFalse: [#even]]');
		add: (ViQueryStep transformBy: ViQueryStepDefinition defMergeAssociations);
		add: (ViQueryStep transformBy: ViQueryStepDefinition defCopyToContext);
		add: (ViQueryStep collect: '[:dict | dict keys sorted]');
		add: (ViQueryStep reference: ViQueryStep defaultProperties);
		add: (ViQueryStep collect: '[:key :context | context contents first at: key]').
	steps overlappingPairsDo: [:prevStep :nextStep | prevStep next: nextStep].
	
	sut firstStep: (ViQueryStep use: {1->#a.1->#b.2->#x.2->#y} in: steps first).

	self
		assert: 2 equals: sut childCount;
		assert: 2 equals: (sut childAt: 1 inGroup: #odd) childCount;
		assert: 2 equals: (sut childAt: 1 inGroup: #even) childCount.