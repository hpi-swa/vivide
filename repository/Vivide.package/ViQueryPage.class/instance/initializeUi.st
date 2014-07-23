initialization
initializeUi

	super initializeUi.
	
	self initializePreviewHandler.
	
	"Let query decide default view."
	currentQueryView := self ui treeView model: self queryModel.
	currentSearchView := UiTreeView new model: self searchModel.
	self updateViews.
			
	self initializeFinder.
	self initializeUiQueryChanges.
	
	self connect: self queryModel signal: #modelReset toSelector: #onQueryEvaluated.
	self connect: self signal: #currentQueryChanged: toSelector: #onQueryEvaluated.
	
	self ui addQueryBtn
		icon: ViIcons plusSmallSunkenIcon;
		balloonText: 'Replace query with copy and edit';
		color: Color green darker.
	self connect: self ui addQueryBtn signal: #clicked: toSelector: #addQuery.
	
	self ui debugQueryBtn
		icon: ViIcons wrenchSmallSunkenIcon;
		balloonText: 'Debug current query';
		color: (Color gray: 0.85).
	self connect: self ui debugQueryBtn signal: #clicked: toSelector: #debugQuery.
	
	self ui combineQueryBtn
		icon: ViIcons evalApplySunkenIcon;
		balloonText: 'Combine/expand queries';
		color: (Color gray: 0.85).
	"self connect: self ui combineQueryBtn signal: #clicked: toSelector: #combineQuery."
	self ui combineQueryBtn hideFull.