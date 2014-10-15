initialization
initializeArtifact

	edit := ViSourceCodeEdit new
		hResizing: #spaceFill;
		outerBorderWidth: 0;
		scrollingMode: #limit;
		autoCreateArtifacts: true;
		margins: (1@0 corner: 0@1).
	edit eventHandler grabKeyboardOnMouseEnter: true.
		
	self connect: edit signal: #editingFinished: toSelector: #acceptSourceCode.
	
	"Text morph gets all events. So register some shortcuts for navigation from heve."
	edit eventHandler on: #(cmd) -> Character arrowLeft send: #goUp to: self.
	edit eventHandler on: #(cmd) -> Character arrowRight send: #goDown to: self.
	edit eventHandler on: #(cmd shift) -> Character arrowLeft send: #goUpToTop to: self.
	edit eventHandler on: #(cmd shift) -> Character arrowRight send: #goDownToBottom to: self.
	edit eventHandler on: #(cmd) -> $a send: #selectAll to: self.

	self artifact: edit.