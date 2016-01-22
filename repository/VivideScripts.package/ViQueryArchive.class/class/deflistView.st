definitions
deflistView
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment | 
	ViListView createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #listView).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 5:48:21 pm')})).
(#sourceCode -> '[:query :view :environment | 
	ViListView createFor: query orUpdate: view in: environment]')})