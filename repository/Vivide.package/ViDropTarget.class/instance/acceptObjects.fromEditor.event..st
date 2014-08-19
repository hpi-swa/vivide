dropping - specific
acceptObjects: someObjects fromEditor: anEditor event: evt

	self
		dropEditor: (ViMultiPaneEditor new: #artifacts for: someObjects)
		event: evt.