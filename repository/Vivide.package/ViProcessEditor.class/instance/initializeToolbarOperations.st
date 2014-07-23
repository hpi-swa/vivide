toolbar - initialization
initializeToolbarOperations

	self toolbar rightPanel
		addGroup: #control
		icon: UiFugueIcons gearIcon
		contents: [:editor | {
			{#resume. 'Resume'. UiFugueIcons control000SmallIcon. nil. 1}.
			{#suspend. 'Suspend'. UiFugueIcons controlPauseSmallIcon. nil. 1}.
			{#restart. 'Restart'. ViIconService blankIcon. nil. 1}.
			{#stepOver. 'Step over'. UiFugueIcons arrowStepOverIcon. nil. 2}.
			{#stepInto. 'Step into'. UiFugueIcons arrowStepIcon. nil. 2}.
			{#stepThrough. 'Step through'. UiFugueIcons arrow315Icon. nil. 2}.
			{#terminate. 'Terminate'. UiFugueIcons crossSmallIcon. nil. 3}
			}].
	
	super initializeToolbarOperations.