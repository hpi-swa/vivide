as yet unclassified
copyEditorState

	self pane currentQuery ifNotNil: [:script |
		^ ((ViSinglePaneEditor
			new: script deepCopy
			for: self objects copy)
				extent: self extent;
				fullBounds;
				asEditorState)].
	^ nil