as yet unclassified
initializeToolbarObjects

	super initializeToolbarObjects.

	self toolbar leftPanel
		addGroup: #parts
		icon: UiSilkIcons folderIcon
		contents: [:editor | editor object ifNil: [#()] ifNotNil: [:s |
				s allSteps]]
		helpText: 'No steps found.'.

	self toolbar leftPanel
		addGroup: #definitions
		icon: UiSilkIcons scriptCodeIcon
		contents: [:editor | editor object ifNil: [#()] ifNotNil: [:s |
				s allSteps collect: [:st | st definition] thenSelect: [:st | st notNil]]]
		helpText: 'No step definitions found'.
		
	self toolbar leftPanel
		addGroup: #versions
		icon: UiSilkIcons timeIcon
		contents: [:editor | [ViMethodVersion versionsOfMethod: editor object definition referenceInArchive] on: Error do: [#()]]
		helpText: 'No versions found.'.