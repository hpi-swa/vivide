definitions
defbuttonBar
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :env |
	ViButtonBarView createFor: query orUpdate: view in: env]).
(#class -> ViQueryViewDefinition).
(#id -> #buttonBar).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 June 2014 10:01:30 am')})).
(#sourceCode -> '[:query :view :env |
	ViButtonBarView createFor: query orUpdate: view in: env]')})