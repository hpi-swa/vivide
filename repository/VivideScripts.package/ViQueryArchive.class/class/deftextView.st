definitions
deftextView
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment | 
	ViTextView createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #textView).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 4:09:38 pm')})).
(#sourceCode -> '[:query :view :environment | 
	ViTextView createFor: query orUpdate: view in: environment]')})