interpretation
interpretScriptWith: someObjects

	^ ViModelNode new
		inputForChildren: someObjects;
		firstStep: self;
		yourself