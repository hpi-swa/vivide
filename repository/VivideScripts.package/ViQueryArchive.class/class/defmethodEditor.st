definitions
defmethodEditor
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment |
	ViMethodEditorView createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #methodEditor).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 August 2014 2:22:59 pm')})).
(#sourceCode -> '[:query :view :environment |
	ViMethodEditorView createFor: query orUpdate: view in: environment]')})