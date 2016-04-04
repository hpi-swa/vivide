accessing
text: newText
	
	self model firstNode ifNotNil: [:n | n text: newText].
	self changed: #clearUserEdits.

	self yieldObject: newText.