toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.

	self toolbar rightPanel
		addGroup: #add
		icon: UiFugueIcons newIcon
		contents: [:editor | {
			{#addArtifact. 'Insert new part'. UiFugueIcons newIcon. nil. 1}.
			{#activateWizard. 'Activate wizard'. UiSilkIcons wandIcon. nil. 2}.
			{#deactivateWizard. 'Deactivate wizard'. ViIcons blankIcon. nil. 2}.
			}].

	self toolbar rightPanel
		addGroup: #debug
		icon: UiSilkIcons bugIcon
		contents: [:editor | {
			{#exploreOutput. 'Explore output'. UiFugueIcons magnifierIcon. nil. 1}.
"			{#exploreOutputWithoutGroups. 'Explore output (w/o groups)'. ViIcons blankIcon. nil. 1}."
			{#exploreOneProperty. 'Explore properties by example'. UiFugueIcons propertyIcon. nil. 2}.
			{#exploreAllProperties. 'Explore properties'. ViIcons blankIcon. nil. 2}.
"			{#exploreContexts. 'Explore context variables'. ViIcons blankIcon. nil. 3}."
			{#exploreStack. 'Explore stack'. ViIcons blankIcon. nil. 3}
			}].

		
	self toolbar rightPanel
		addGroup: #edit
		icon: UiSilkIcons pencilIcon
		contents: [:editor | {
"			{#useNewCode. 'Clone code definition'. ViIcons blankIcon. nil. 2}."
			{#acceptChanges. 'Accept changes'. UiFugueIcons tickSmallIcon. nil. 3}.
			{#clear. 'Revert changes'. UiFugueIcons crossSmallIcon. nil. 3}.
			{#tryDeleteScript. 'Remove this part'. UiSilkIcons binEmptyIcon. nil. 4}.
			}].

	self toolbar rightPanel
		addGroup: #queryOrganizer
		icon: UiSilkIcons reportIcon
		contents: [:editor | {
			{#register. 'Register'. UiSilkIcons reportAddIcon. nil. 1}.
			{#unregister. 'Unregister'. ViIcons blankIcon. nil. 1}.
			{#openNextSteps. 'Open next parts'. ViIcons blankIcon. nil. 2}.
			{#openAllSteps. 'Open all steps (w/ references)'. ViIcons blankIcon. nil. 2}.
			{#linkAllScripts. 'Link parts in window'. UiSilkIcons folderLinkIcon. nil. 3}.
			}].