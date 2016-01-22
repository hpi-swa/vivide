definitions
defworkspace
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment |
	ViWorkspaceView createFor: query orUpdate: view in: environment]).
(#class -> ViQueryViewDefinition).
(#id -> #workspace).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:04:17 pm')})).
(#sourceCode -> '[:query :view :environment |
	ViWorkspaceView createFor: query orUpdate: view in: environment]')})