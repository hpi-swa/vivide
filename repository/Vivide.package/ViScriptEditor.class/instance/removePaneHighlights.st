pane highlights
removePaneHighlights

	(self valueOfProperty: #paneHighlights ifAbsent: [#()]) do: [:h | h delete].
	self removeProperty: #paneHighlights.