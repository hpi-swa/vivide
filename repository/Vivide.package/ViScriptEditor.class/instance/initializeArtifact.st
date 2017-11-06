initialization
initializeArtifact

	| container |

	ViQueryChangeNotifier uniqueInstance
		notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind
		change: ModifiedEvent changeKind using: #updateFromChangedScript:.
	ViQueryChangeNotifier uniqueInstance
		notify: self ofQueryChangesOfItem: ViQueryChangeNotifier definitionKind
		change: ModifiedEvent changeKind using: #updateFromChangedScript:.
		
	edit := ViSourceCodeEdit new
		hResizing: #spaceFill;
		outerBorderWidth: 0;
		scrollingMode: #never;
		autoCreateArtifacts: true;
		margins: (4@0 corner: 0@7).
		
	self connect: edit signal: #editingFinished: toSelector: #acceptSourceCode.
	
	"Text morph gets all events. So register some shortcuts for navigation from heve."
	edit eventHandler on: #(cmd) -> Character arrowLeft send: #goUp to: self.
	edit eventHandler on: #(cmd) -> Character arrowRight send: #goDown to: self.
	edit eventHandler on: #(cmd shift) -> Character arrowLeft send: #goUpToTop to: self.
	edit eventHandler on: #(cmd shift) -> Character arrowRight send: #goDownToBottom to: self.
	edit eventHandler on: #(cmd) -> $a send: #selectAll to: self.
	edit eventHandler on: Character escape send: #tryDeactivateWizard to: self.

	self connect: edit eventHandler signal: #focusReceived toSelector: #highlightAffectedPanes.
	self connect: edit eventHandler signal: #focusLost toSelector: #discardPaneHighlights.

	self sgConnectSignal: #expressionAboutToBeEvaluated: toSelector: #updateBindings. 

	hintBox := Morph new
		color: Color transparent;
		layoutPolicy: (ViVerticalLayout new layoutInset: (5@5 corner: 0@0); yourself);
		vResizing: #shrinkWrap;
		hResizing: #spaceFill.
	
	container := Morph new
		color: Color transparent;
		layoutPolicy: ViVerticalLayout new;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill.
	container addAllMorphs: {edit. hintBox}.
	
	hintBox hideFull.
	self artifact: container.