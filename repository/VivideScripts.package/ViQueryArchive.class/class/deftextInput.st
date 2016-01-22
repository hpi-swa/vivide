definitions
deftextInput
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment |
	ViLineEdit createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #textInput).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 5:31:37 pm')})).
(#sourceCode -> '[:query :view :environment |
	ViLineEdit createFor: query orUpdate: view in: environment]')})