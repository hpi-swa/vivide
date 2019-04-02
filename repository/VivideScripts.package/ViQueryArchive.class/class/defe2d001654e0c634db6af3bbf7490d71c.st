definitions
defe2d001654e0c634db6af3bbf7490d71c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs asSet asOrderedCollection] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'e2d00165-4e0c-634d-b6af-3bbf7490d71c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs asSet asOrderedCollection] value: in)]')})