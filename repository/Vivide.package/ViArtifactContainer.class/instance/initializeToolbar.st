toolbar - initialization
initializeToolbar

	self toolbar: ViArtifactToolbar new.
	self connect: self signal: #expanded toSelector: #showToolbar.
	
	self toolbar leftPanel editor: self.
	self toolbar rightPanel editor: self.

	self
		initializeToolbarControls;
		initializeToolbarOperations;
		initializeToolbarObjects.
 