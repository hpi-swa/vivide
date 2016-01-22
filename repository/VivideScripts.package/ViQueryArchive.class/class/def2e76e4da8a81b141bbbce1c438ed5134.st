definitions
def2e76e4da8a81b141bbbce1c438ed5134
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj1 :obj2 | 
	(ViMethodVersion versionsOfMethod: obj1 methodReference) size >= 
	(ViMethodVersion versionsOfMethod: obj2 methodReference) size]).
(#class -> ViQueryMapDefinition).
(#id -> #'2e76e4da-8a81-b141-bbbc-e1c438ed5134').
(#inputKind -> Object).
(#mapType -> #twoArgs).
(#outputKind -> Boolean).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj1 :obj2 | 
	(ViMethodVersion versionsOfMethod: obj1 methodReference) size >= 
	(ViMethodVersion versionsOfMethod: obj2 methodReference) size]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})