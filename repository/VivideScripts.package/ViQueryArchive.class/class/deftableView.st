definitions
deftableView
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment |
	ViTableView createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #tableView).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:57:24 pm')})).
(#sourceCode -> '[:query :view :environment |
	ViTableView createFor: query orUpdate: view in: environment]')})