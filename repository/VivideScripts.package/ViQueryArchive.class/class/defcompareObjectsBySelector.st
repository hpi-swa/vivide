definitions
defcompareObjectsBySelector
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj1 :obj2 | obj1 selector <= obj2 selector]).
(#class -> ViQueryMapDefinition).
(#id -> #compareObjectsBySelector).
(#inputKind -> Object).
(#mapType -> #twoArgs).
(#outputKind -> Boolean).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj1 :obj2 | obj1 selector <= obj2 selector]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})