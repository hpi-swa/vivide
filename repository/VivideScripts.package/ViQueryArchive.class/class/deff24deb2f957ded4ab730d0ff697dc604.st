definitions
deff24deb2f957ded4ab730d0ff697dc604
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:definitions | definitions select: [:def | def isViewDefinition]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'f24deb2f-957d-ed4a-b730-d0ff697dc604').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 8:27:31 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:definitions | definitions select: [:def | def isViewDefinition]] value: in)]')})