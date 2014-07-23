initialization
initializeUi

	super initializeUi. "ff"
			
	self initializeCodeArea.
	
	"General callbacks. Scene-graph based."
	self sgConnectSignal: #aboutToClose toSelector: #passKeyboardFocusFrom: pattern: #(0).
	
	self sgConnectSignal: #mouseWheelUp: to: self ui codeArea verticalScrollBar selector: #decreaseValueBySingleStep.
	self sgConnectSignal: #mouseWheelDown: to: self ui codeArea verticalScrollBar selector: #increaseValueBySingleStep.
	
	self sgConnectSignal: #informationSent: toSelector:  #showInformation:.
	self sgConnectSignal: #warningSent: toSelector:  #showWarning:.
	
	self sgConnectSignal: #focusChanged: toSelector: #onFocusChanged:.
	
	self sgConnectSignal: #contextRequested: toSelector: #updateContextForArtifact:.