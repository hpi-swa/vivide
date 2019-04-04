as yet unclassified
interpretScriptWith: someObjects

	^ ViQueryNode new
		inputForChildren: someObjects;
		firstStep: self;
		yourself