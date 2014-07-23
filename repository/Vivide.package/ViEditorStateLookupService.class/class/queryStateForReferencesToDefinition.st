as yet unclassified
queryStateForReferencesToDefinition

	| state |
	state := ViEditorState new.
	self setProperties: #((className ViObjectListEditor) (headerText 'Query Definition') (currentPageIndex 2)) to: state.
	self setProperties: #((className ViArtifactListPage)) to: state newState.
	self setProperties: #((className ViQueryPage)), {{#query. ViQueryOrganizer default stepById: #refToDef}} to: state newState.
	^ state