definitions
defartifactsView
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment |
	ViArtifactListView2 createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #artifactsView).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 February 2014 1:49:37 pm')})).
(#sourceCode -> '[:query :view :environment |
	ViArtifactListView2 createFor: query orUpdate: view in: environment]')})