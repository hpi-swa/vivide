interpretation
interpretScriptWith: someObjects

	^ ViQueryNode new
		inputForChildren: someObjects;
		firstStep: self;
		yourself