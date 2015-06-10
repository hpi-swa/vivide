nil
text: newText

	self model ifNotNil: [:m |
		m firstNode text: newText].
	self changed: #clearUserEdits.