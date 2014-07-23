toolbar - initialization
initializeToolbar

	self toolbar: ViArtifactToolbar new.
	self connect: self signal: #expanded toSelector: #showToolbar.

	self
		initializeToolbarControls;
		initializeToolbarOperations;
		initializeToolbarObjects.
 