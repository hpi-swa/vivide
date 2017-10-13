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
			{#openScript. 'Open script'. UiFugueIcons controlIcon. nil. 3}.			
			{#interpretScript. 'Interpret script'. ViIcons blankIcon. nil. 3}.
			{#exploreViews. 'Browse views'. UiFugueIcons picturesStackIcon. nil. 3}.
			}].
		
	self toolbar rightPanel
		addGroup: #edit
		icon: UiSilkIcons pencilIcon
		contents: [:editor | {
"			{#useNewCode. 'Clone code definition'. ViIcons blankIcon. nil. 2}."
			{#acceptChanges. 'Accept changes'. UiFugueIcons tickSmallIcon. nil. 1}.
			{#clear. 'Revert changes'. UiFugueIcons crossSmallIcon. nil. 1}.
			{#loadPreviousVersion. 'Previous version'. UiFugueIcons arrowReturn180LeftIcon. nil. 2}.
			{#loadLastVersion. 'Last version'. ViIcons blankIcon. nil. 2}.
			{#tryDeleteScript. 'Remove this part'. UiSilkIcons binEmptyIcon. nil. 3}.
			}].

	self toolbar rightPanel
		addGroup: #profile
		icon: UiFugueIcons userSilhouetteIcon
		contents: [:editor | {
			{#tryAddScript. 'Install in profile'. UiSilkIcons databaseEditIcon. nil. 1}.
			{#tryRemoveScript. 'Remove from profile'. ViIcons blankIcon. nil. 1}.
			{#copyToClipboard. 'Copy to clipboard'. UiFugueIcons clipboardTextIcon. nil. 2}
			}].
		
	self toolbar rightPanel
		addGroup: #debug
		icon: UiSilkIcons bugIcon
		contents: [:editor | {
			{#exploreOutput. 'Explore output'. UiFugueIcons magnifierIcon. nil. 1}.
			{#exploreOutputTrace. 'Explore output trace'. ViIcons blankIcon. nil. 1}.
			{#exploreOneProperty. 'Explore properties by example'. UiFugueIcons propertyIcon. nil. 2}.
			{#exploreAllProperties. 'Explore properties'. ViIcons blankIcon. nil. 2}.
"			{#exploreContexts. 'Explore context variables'. ViIcons blankIcon. nil. 3}."
"			{#exploreStack. 'Explore stack'. ViIcons blankIcon. nil. 3}"
			}].