highlights
discardPaneHighlights

	self highlights ifEmpty: [^ self].
	self highlights do: [:h | h delete].
	self highlights removeAll.