definitions
defobjectEditor
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment |
	ViExplorerView createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #objectEditor).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '25 August 2014 11:08:49 am')})).
(#sourceCode -> '[:query :view :environment |
	ViExplorerView createFor: query orUpdate: view in: environment]')})