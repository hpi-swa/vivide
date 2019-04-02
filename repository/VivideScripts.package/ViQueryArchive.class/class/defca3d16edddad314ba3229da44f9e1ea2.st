definitions
defca3d16edddad314ba3229da44f9e1ea2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs select: [:o | (o first > 0 or: [o third subclasses notEmpty]) and: [o third isMeta not]]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'ca3d16ed-ddad-314b-a322-9da44f9e1ea2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2014 4:32:08 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs select: [:o | (o first > 0 or: [o third subclasses notEmpty]) and: [o third isMeta not]]] value: in)]')})