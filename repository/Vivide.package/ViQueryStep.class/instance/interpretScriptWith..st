as yet unclassified
interpretScriptWith: someObjects

	^ ViQueryNode new
		firstStep: (ViQueryStep use: someObjects in: self);
		yourself