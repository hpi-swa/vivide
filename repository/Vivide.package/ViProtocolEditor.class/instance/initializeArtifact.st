initialization
initializeArtifact

	self ui initializePanel.
	self artifact: self ui panel.
	
	self ui dropTarget text: '<font color="#AAAAAA" size="9">Drop methods here<br>to change protocol.</font>' asHtmlText.
	
	self connect: self ui nameEdit signal: #editingFinished: toSelector: #updateProtocol:.
	self connect: self ui dropTarget signal: #objectsDropped: toSelector: #changeProtocolFor:.
	
	self resizeHandle
		minSize: 75;
		target: self ui panel.