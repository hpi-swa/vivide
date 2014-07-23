loading - editors
loadObjectList: anObjectListEditor

	anObjectListEditor pages: (self states collect: [:editorState |
		 ViPage newFromState: editorState]).
	anObjectListEditor currentPageIndex: (self properties at: #currentPageIndex ifAbsent: [1]).