toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.		

	self toolbar rightPanel
		addGroup: #font
		icon: UiSilkIcons fontIcon
		contents: [:editor | {
			{#setFont:. 'Text Font'. nil. UiPlatform current standardDefaultTextFont}.
			{#setFont:. 'Code Font'. nil. UiPlatform current standardCodeFont}}].
		
	self toolbar rightPanel
		addGroup: #size
		icon: UiFugueIcons editSizeIcon
		contents: [:editor | #(8 9 10 11 12 14 16) collect: [:sz |
			{#setPointSize:. sz asString. nil. sz}]].
	
	self toolbar rightPanel
		addGroup: #edit
		icon: UiSilkIcons bulletDiskIcon
		contents: [:editor | {
			{#acceptChanges. 'Accept changes'. UiFugueIcons tickSmallIcon}.
			{#clear. 'Revert changes'. UiFugueIcons crossSmallIcon}}].