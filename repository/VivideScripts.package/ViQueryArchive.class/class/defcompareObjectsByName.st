definitions
defcompareObjectsByName
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj1 :obj2 | obj1 name <= obj2 name]).
(#class -> ViQueryMapDefinition).
(#id -> #compareObjectsByName).
(#inputKind -> Object).
(#mapType -> #twoArgs).
(#outputKind -> Boolean).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj1 :obj2 | obj1 name <= obj2 name]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})