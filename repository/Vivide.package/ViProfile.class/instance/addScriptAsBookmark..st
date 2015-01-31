as yet unclassified
addScriptAsBookmark: aScript

	self bookmarks add: ((ViSinglePaneEditor
		new: aScript
		for: #())
			extent: 400@250;
			fullBounds;
			asEditorState).