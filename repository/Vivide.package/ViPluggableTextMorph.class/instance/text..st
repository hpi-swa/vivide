accessing
text: newText

	self model firstNode ifNotNil: [:n |
		n at: #text put: newText].
	self changed: #clearUserEdits.

	self yieldObject: newText.