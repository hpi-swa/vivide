memento - data
tryAcceptSourceCode

	| c |
	c := self currentDefinition references size.
	c < 5 ifTrue: [^ self acceptSourceCode].
	
	self copyAcceptSourceCode.
	self
		warn: ('Definition was cloned because of too many references ({1}).' format: {c})
		for: self ui definitionEdit.
		
	"ViOverlayMessageBox new
		title: 'Accept changed query definition';
		message: ('This definition has {1} references.' format: {referenceCount})
		icon: UiSilkIcons informationIcon;
		addAction: 'Copy definition first; apply changes to copy.' icon: UiFugueIcons documentCopyIcon receiver: self selectors: #(copyAcceptSourceCode);
		addAction: 'Accept changes; modify all referenced steps' icon: UiSilkIcons bulletDiskIcon receiver: self selectors: #(acceptSourceCode);
		showAbove: self.
		
	^ false"