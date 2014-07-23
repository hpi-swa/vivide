toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.

	self toolbar rightPanel
		addGroup: #queryOrganizer
		icon: UiSilkIcons reportIcon
		contents: [:editor | {
			{#registerQuery. 'Register in query list'. UiSilkIcons reportAddIcon. nil. 1}.
			{#unregisterQuery. 'Unregister from query list'. ViIcons blankIcon. nil. 1}.
			{#openNextSteps. 'Open next steps'. ViIcons blankIcon. nil. 2}.
			{#openAllSteps. 'Open all steps (w/ references)'. ViIcons blankIcon. nil. 2}.
			{#linkAllSteps. 'Link steps in window'. UiSilkIcons folderLinkIcon. nil. 3}.
			}].

	self toolbar rightPanel
		addGroup: #debug
		icon: UiSilkIcons bugIcon
		contents: [:editor | {
			{#exploreOutput. 'Explore output'. UiFugueIcons magnifierIcon. nil. 1}.
			{#exploreOutputWithoutGroups. 'Explore output (w/o groups)'. ViIcons blankIcon. nil. 1}.
			{#exploreOneProperty. 'Explore properties by example'. UiFugueIcons propertyIcon. nil. 2}.
			{#exploreAllProperties. 'Explore properties'. ViIcons blankIcon. nil. 2}.
			{#exploreContexts. 'Explore context variables'. ViIcons blankIcon. nil. 3}.
			{#exploreStack. 'Explore stack'. ViIcons blankIcon. nil. 3}
			}].

	self toolbar rightPanel
		addGroup: #edit
		icon: UiSilkIcons pencilIcon
		contents: [:editor | {
			{#addArtifact. 'Insert new step'. UiFugueIcons newIcon. nil. 1}.
			{#addReference. 'Insert new step reference'. UiSilkIcons bulletGoIcon. nil. 1}.
			{#useNewCode. 'Clone code definition'. ViIcons blankIcon. nil. 2}.
			{#acceptChanges. 'Accept changes'. UiFugueIcons tickSmallIcon. nil. 3}.
			{#clear. 'Revert changes'. UiFugueIcons crossSmallIcon. nil. 3}.
			{#tryDeleteStep. 'Remove step'. UiSilkIcons binEmptyIcon. nil. 4}.
			}].