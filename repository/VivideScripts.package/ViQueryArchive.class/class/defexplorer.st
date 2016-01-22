definitions
defexplorer
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment |
	ViExplorerView createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #explorer).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 July 2014 9:19:28 am')})).
(#sourceCode -> '[:query :view :environment |
	ViExplorerView createFor: query orUpdate: view in: environment]')})