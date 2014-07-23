geometry - actions
collapse

	self ui panel submorphs size = 1
		ifTrue: [^ self "already hidden"].
		
	self
		setProperty: #hiddenSubmorphs
		toValue: (self ui panel submorphs copyWithout: self ui panel firstSubmorph).
		
	self ui panel
		removeAllMorphsIn: (self valueOfProperty: #hiddenSubmorphs);
		vResizing: #shrinkWrap.
		
	self
		vResizing: #shrinkWrap;
		layoutInset: (0 @ 2 corner: 0@ -3).
	
	"Not really necessary but there are some UI interactions that make inconsistency possible here."
	self ui hideBtn icon: ViIcons control270SmallSunkenIcon.