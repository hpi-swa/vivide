pane api
updateModelInput

	self flag: #bug. "mt: What if there is no object left? What about #lastArtifactRemoved?"
	self objects ifNotEmpty: [:objects |
		self updateModelInput: objects].