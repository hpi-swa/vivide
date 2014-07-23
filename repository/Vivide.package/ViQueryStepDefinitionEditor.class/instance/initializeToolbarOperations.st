toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.

	self toolbar rightPanel
		addGroup: #queryOrganizer
		icon: UiSilkIcons reportIcon
		contents: [:editor | {
			{#registerDefinition. 'Register definition'. UiSilkIcons reportAddIcon. nil. 1}.
			{#unregisterDefinition. 'Unregister definition'. UiSilkIcons reportDeleteIcon. nil. 1}.
			}].

	self toolbar rightPanel
		addGroup: #edit
		icon: UiSilkIcons pencilIcon
		contents: [:editor | {
			{#acceptChanges. 'Accept changes'. UiFugueIcons tickSmallIcon. nil. 1}.
			{#clear. 'Revert changes'. UiFugueIcons crossSmallIcon. nil. 1}.
"			{#useNewCode. 'Clone definition'. ViIcons blankIcon. nil. 2}.
"			}].