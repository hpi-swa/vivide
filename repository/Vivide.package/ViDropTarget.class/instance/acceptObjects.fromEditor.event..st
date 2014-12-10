dropping - specific
acceptObjects: someObjects fromEditor: anEditor event: evt

	self
		dropEditor: (ViSinglePaneEditor new: #artifacts for: someObjects)
		event: evt.