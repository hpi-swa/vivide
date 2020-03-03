toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.		

	self toolbar rightPanel
		addGroup: #font
		icon: UiSilkIcons fontIcon
		contents: [:editor | {
			{#setFont:. 'Normal Font'. nil. TextStyle defaultFont}.
			{#setFont:. 'Mono Font'. nil. TextStyle defaultFixedFont}}].
		
	self toolbar rightPanel
		addGroup: #size
		icon: UiFugueIcons editSizeIcon
		contents: [:editor | #(8 12 16 24 32) collect: [:sz |
			{#setPointSize:. sz asString. nil. sz}]].
	
	self toolbar rightPanel
		addGroup: #edit
		icon: UiSilkIcons bulletDiskIcon
		contents: [:editor | {
			{#acceptChanges. 'Accept changes'. UiFugueIcons tickSmallIcon}.
			{#clear. 'Revert changes'. UiFugueIcons crossSmallIcon}}].