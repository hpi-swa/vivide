definitions
deff96e87d9b6921b47a3c7e03bebbb78f1
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objects :context | objects select: [:ref | ref category = 'as yet unclassified' or: [ref category = 'nil']]]).
(#class -> ViQueryMapDefinition).
(#id -> #'f96e87d9-b692-1b47-a3c7-e03bebbb78f1').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:objects :context | objects select: [:ref | ref category = ''as yet unclassified'' or: [ref category = ''nil'']]].').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})