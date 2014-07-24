as yet unclassified
showCallgraphsStatistics

	| nd |
	nd := self callgraphs values count: [:cg | cg isNonDeterministic].
	
	Transcript
		cr; show: '[cgc] Call Graph Cache Statistics';
		cr; show: '[cgc] Size: ', self callgraphs keys size asString;
		cr; show: '[cgc] Non-Deterministic: ', nd asString.