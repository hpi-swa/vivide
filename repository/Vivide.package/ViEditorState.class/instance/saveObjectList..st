saving - editors
saveObjectList: anObjectListEditor

	anObjectListEditor pages do: [:page | page saveState: self newState].
	self properties at: #currentPageIndex put: anObjectListEditor currentPageIndex.