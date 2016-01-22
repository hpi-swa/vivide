definitions
defafd994289871f545aeccaf8140ef7bec
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'afd99428-9871-f545-aecc-af8140ef7bec').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'c7223154-d83c-2f4a-916a-f0bfd27be3bd').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 4:36:46 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]')})