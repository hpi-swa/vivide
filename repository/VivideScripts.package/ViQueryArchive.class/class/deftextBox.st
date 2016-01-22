definitions
deftextBox
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment |
	ViTextEdit createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #textBox).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 June 2014 10:17:40 am')})).
(#sourceCode -> '[:query :view :environment |
	ViTextEdit createFor: query orUpdate: view in: environment]')})