geometry - actions
expand

	self ui panel submorphs size > 1
		ifTrue: [^ self "already visible"].
		
	self ui panel
		addAllMorphs: (self valueOfProperty: #hiddenSubmorphs);
		vResizing: #spaceFill.
		
	self
		vResizing: #spaceFill;
		layoutInset: 0;
		removeProperty: #hiddenSubmorphs.
	
	"Not really necessary but there are some UI interactions that make inconsistency possible here."
	self ui hideBtn icon: ViIcons control090SmallSunkenIcon.