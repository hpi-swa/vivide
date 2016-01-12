add/remove
addScriptAsBookmark: aScript withObjects: someObjects

	self bookmarks add: ((ViSinglePaneEditor
		new: aScript
		for: someObjects)
			extent: (aScript
				valueOfProperty: #optimalExtent
				ifAbsent: [400@250]);
			fullBounds;
			asEditorState).