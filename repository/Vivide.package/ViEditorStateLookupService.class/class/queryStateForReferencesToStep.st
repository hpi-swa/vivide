as yet unclassified
queryStateForReferencesToStep

	| state |
	state := ViEditorState new.
	self setProperties: #((className ViObjectListEditor) (headerText 'Query Step') (currentPageIndex 2)) to: state.
	self setProperties: #((className ViArtifactListPage)) to: state newState.
	self setProperties: #((className ViQueryPage)), {{#query. ViQueryOrganizer default stepById: #refToStep}} to: state newState.
	^ state