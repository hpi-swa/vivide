initialization
initializeTextField

	self textField: (ViSourceCodeEdit new
		hResizing: #spaceFill;
		outerBorderWidth: 0;
		scrollingMode: #never;
		autoCreateArtifacts: true;
		margins: (4@0 corner: 0@7)).
		
	self connect: self textField signal: #editingFinished: toSelector: #acceptSourceCode.
	
	"Text morph gets all events. So register some shortcuts for navigation from here."
	self textField eventHandler on: #(cmd) -> Character arrowLeft send: #goUp to: self.
	self textField eventHandler on: #(cmd) -> Character arrowRight send: #goDown to: self.
	self textField eventHandler on: #(cmd shift) -> Character arrowLeft send: #goUpToTop to: self.
	self textField eventHandler on: #(cmd shift) -> Character arrowRight send: #goDownToBottom to: self.
	self textField eventHandler on: #(cmd) -> $a send: #selectAll to: self.
	self textField eventHandler on: Character escape send: #tryQuickClear to: self.

	self connect: self textField eventHandler signal: #focusReceived toSelector: #addPaneHighlights.
	self connect: self textField eventHandler signal: #focusLost toSelector: #removePaneHighlights.

	self sgConnectSignal: #expressionAboutToBeEvaluated: toSelector: #updateBindings. 