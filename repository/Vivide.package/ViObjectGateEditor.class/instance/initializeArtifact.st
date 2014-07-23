initialization
initializeArtifact

	self ui initializePanel.
	self artifact: self ui panel.
	
	self ui dropTarget convertPassengerBlock: [:objects | objects]. "no conversion"
	self ui dropTarget text: '<font color="#AAAAAA" size="9">Drop objects here<br>to send.</font>' asHtmlText.
	self connect: self ui dropTarget signal: #objectsDropped: toSelector: #sendObjects:.
	
	self resizeHandle
		minSize: 150;
		target: self ui panel.
		
	self connect: self ui serverBtn signal: #toggled: toSelector: #toggleServerMode:.
	self connect: self ui connectBtn signal: #clicked: toSelector: #tryConnect.
	
	"Setup list for showing received objects."
	UiPropertyItemNode new in: [:model |
		model addDefaultGroup.
		self ui incomingList
			model: model;
			listSpec: (UiItemViewColumnSpec newFrom: {#text -> #text. #icon -> #icon.});
			dragDropSpec: (ViUnboxingDragDropSpec new
				dropEnabled: false;
				key: #object;
				dragTransferType: #objects;
				source: model). ].
			
	"address edit"
	self connect: self ui addressEdit signal: #editingFinished: toSelector: #updateAddressInObjectGate.