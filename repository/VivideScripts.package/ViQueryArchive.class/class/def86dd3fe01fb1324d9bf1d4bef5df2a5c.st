definitions
def86dd3fe01fb1324d9bf1d4bef5df2a5c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:step | #text -> ((SystemNavigation default allCallsOn: step id) select: [:ref | ref classSymbol ~= #ViQueryArchive]) size]).
(#class -> ViQueryMapDefinition).
(#id -> #'86dd3fe0-1fb1-324d-9bf1-d4bef5df2a5c').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:47:45 pm')})).
(#sourceCode -> '[:step | #text -> ((SystemNavigation default allCallsOn: step id) select: [:ref | ref classSymbol ~= #ViQueryArchive]) size]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})