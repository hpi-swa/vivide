manual
queryStateForSenders

	| state |
	state := ViEditorState new.
	self setProperties: #((className ViObjectListEditor) (headerText 'Method') (currentPageIndex 2)) to: state.
	self setProperties: #((className ViArtifactListPage)) to: state newState.
	self setProperties: #((className ViQueryPage)), {{#query. ViQueryOrganizer default stepById: #senders}} to: state newState.
	^ state