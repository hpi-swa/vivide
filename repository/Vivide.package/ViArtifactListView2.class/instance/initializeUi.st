initialization
initializeUi

	self
		flag: #refactor; "mt: Use other layout policy than buggy table layout."
		changeTableLayout;
		clipSubmorphs: true;
		color: (Color gray: 0.85).

	scrollArea := UiScrollArea new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		horizontalScrollBarPolicy: #alwaysOff;
		verticalScrollBarPolicy: #asNeeded;
		widgetResizable: true;
		outerBorderWidth: 0;
		widget: ViArtifactContainerColumn new.
	scrollArea verticalScrollBar
		singleStep: 20;
		outerBorderWidth: 0;
		color: Color transparent.
	scrollArea transformMorph
		color: (Color gray: 0.3).
	self addMorph: scrollArea.
	
	self sgConnectSignal: #objectSelectionChanged: toSelector: #onSelectionChanged:.
	
	"General callbacks. Scene-graph based."
	self sgConnectSignal: #aboutToClose toSelector: #passKeyboardFocusFrom: pattern: #(0).
	
	self sgConnectSignal: #mouseWheelUp: to: scrollArea verticalScrollBar selector: #decreaseValueBySingleStep.
	self sgConnectSignal: #mouseWheelDown: to: scrollArea verticalScrollBar selector: #increaseValueBySingleStep.
	
	self sgConnectSignal: #informationSent: toSelector:  #showInformation:.
	self sgConnectSignal: #warningSent: toSelector:  #showWarning:.
	
	self sgConnectSignal: #focusChanged: toSelector: #onFocusChanged:.
	
	self sgConnectSignal: #contextRequested: toSelector: #updateContextForArtifact:.