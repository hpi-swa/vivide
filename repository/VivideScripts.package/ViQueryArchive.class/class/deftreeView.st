definitions
deftreeView
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment |
	ViTreeView createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #treeView).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:query :view :environment |
	ViTreeView createFor: query orUpdate: view in: environment]')})