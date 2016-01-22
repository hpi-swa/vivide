definitions
deftilePlain
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment |
	ViTilePlainView createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #tilePlain).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 July 2014 1:30:45 pm')})).
(#sourceCode -> '[:query :view :environment |
	ViTilePlainView createFor: query orUpdate: view in: environment]')})