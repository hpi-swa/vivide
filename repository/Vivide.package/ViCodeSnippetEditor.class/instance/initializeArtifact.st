initialization
initializeArtifact

	| box |
	snippetEdit := ViSourceCodeEdit new
		model: ViWorkspace new;
		outerBorderWidth: 0;
		scrollingMode: #none;
		colorFocusBackground: Color white;
		colorFocusBorder: (Color gray: 0.3);
		colorBackground: Color white;
		autoCreateArtifacts: false;
"		height: 150;"
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	self flag: #ugly. "mt: Take a look at text editor and paragraph initialization and update. Maybe use Shout hook #aboutToStyle?"
	snippetEdit widget styler workspace: snippetEdit model.
	
	self connect: snippetEdit signal: #editingFinished: toSelector: #updateToolbars.
	self connect: snippetEdit signal: #editingFinished: toSelector: #updateSnippet.

"	self sgConnectSignal: #expressionAboutToBeEvaluated toSelector: #updateContext."
	self sgConnectSignal: #expressionEvaluated: toSelector: #updateToolbars.
	self sgConnectSignal: #expressionEvaluated: toSelector: #showEvaluationResult:.

	snippetEdit eventHandler grabKeyboardOnMouseEnter: true.
	
	"------------------------"

	snippetPanel := ViQueryCommandsBar new
		color: Color transparent;
		hResizing: #spaceFill.
	self connect: snippetPanel signal: #activated: toSelector: #executeCommand:.
	
	"------------------------"

	box := UiContainer new
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		cellInset: 0;
		layoutInset: 0;
		height: 150.
	box addAllMorphs: {"snippetPanel."snippetEdit}.

	self artifact: box.