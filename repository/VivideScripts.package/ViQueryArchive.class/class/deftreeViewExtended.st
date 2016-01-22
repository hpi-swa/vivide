definitions
deftreeViewExtended
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment | 
	ViTreeViewExtended createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #treeViewExtended).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 2:07:07 pm')})).
(#sourceCode -> '[:query :view :environment | 
	ViTreeViewExtended createFor: query orUpdate: view in: environment]')})