toolbar - initialization
initializeToolbarObjects

	super initializeToolbarObjects.

	self toolbar leftPanel
		addGroup: #parts
		icon: UiFugueIcons scriptArrowIcon
		contents: [:editor | editor thisStep ifNil: [#()] ifNotNil: [:s | s allSteps]]
		helpText: 'No steps found.'.
		
	self toolbar leftPanel
		addGroup: #versions
		icon: UiSilkIcons timeIcon
		contents: [:editor | editor versions]
		helpText: 'No versions found.'.

	self toolbar leftPanel
		addGroup: #viewScriptProperties
		icon: UiFugueIcons picturesIcon
		contents: [:editor | {editor allSteps first viewClass. '-------------' -> ''}, editor viewExpectedScriptProperties]
		helpText: 'No script properties used.'.
	self toolbar leftPanel
		addGroup: #viewObjectProperties
		icon: UiFugueIcons pictureMediumIcon
		contents: [:editor | {editor allSteps first viewClass. '-------------' -> ''}, editor viewExpectedObjectProperties]
		helpText: 'No object properties used.'