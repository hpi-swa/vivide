initialization
initialize

	super initialize.

	self
		beSticky;
		color: Color transparent;
		layoutPolicy: ViArtifactToolbarLayout new.
	
	leftBar := ViGroupedToolbar new orientation: #rightToLeft.
	topBar := ViArtifactToolbarPanel new.
	rightBar :=  ViOperationToolbar new orientation: #leftToRight.

	self addAllMorphs: {leftBar.rightBar.topBar}.
	
	self connect: self leftPanel eventHandler signal: #mouseLeft: toSelector: #tryDelete:from:
		pattern: {1. #=. self leftPanel}.
	self connect: self rightPanel eventHandler signal: #mouseLeft: toSelector: #tryDelete:from:
		pattern: {1. #=. self rightPanel}.
	self connect: self topPanel eventHandler signal: #mouseLeft: toSelector: #tryDelete:from: 
		pattern: {1. #=. self topPanel}.