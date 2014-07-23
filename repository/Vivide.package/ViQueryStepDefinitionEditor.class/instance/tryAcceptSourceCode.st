actions
tryAcceptSourceCode

	| referenceCount |
	referenceCount := self object references size.
	referenceCount < 5 ifTrue: [^ self acceptSourceCode].
	
	ViOverlayMessageBox new
		title: 'Accept changed query definition';
		message: ('This definition has {1} references.' format: {referenceCount})
		icon: UiSilkIcons informationIcon;
		addAction: 'Accept changes.' icon: UiSilkIcons bulletDiskIcon receiver: self selectors: #(acceptSourceCode);
		addAction: 'Accept, then browse referenced steps.' icon: UiSilkIcons bulletDiskIcon receiver: self selectors: #(acceptSourceCode browseReferences);
		addAction: 'Just browse referenced steps.' icon: UiFugueIcons arrowStepIcon receiver: self selectors: #(clear browseReferences);
		addAction: 'Abort this action.' icon: UiSilkIcons cancelIcon receiver: self selectors: #(clear);
		showAbove: self.
		
	^ false