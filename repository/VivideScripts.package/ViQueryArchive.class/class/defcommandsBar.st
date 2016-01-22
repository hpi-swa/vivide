definitions
defcommandsBar
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment |
	ViCommandsView createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #commandsBar).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 June 2014 8:59:04 am')})).
(#sourceCode -> '[:query :view :environment |
	ViCommandsView createFor: query orUpdate: view in: environment]')})