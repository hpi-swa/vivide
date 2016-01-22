definitions
deftreePlain
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment | 
	ViTreePlainView createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #treePlain).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 May 2014 2:46:31 pm')})).
(#sourceCode -> '[:query :view :environment | 
	ViTreePlainView createFor: query orUpdate: view in: environment]')})