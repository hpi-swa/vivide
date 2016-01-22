definitions
defcompareObjectsAsStrings
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj1 :obj2 | obj1 asString <= obj2 asString]).
(#class -> ViQueryMapDefinition).
(#id -> #compareObjectsAsStrings).
(#inputKind -> Object).
(#mapType -> #twoArgs).
(#outputKind -> Boolean).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj1 :obj2 | obj1 asString <= obj2 asString]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})