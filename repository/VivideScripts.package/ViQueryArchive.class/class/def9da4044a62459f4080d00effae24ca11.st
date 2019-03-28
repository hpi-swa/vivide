definitions
def9da4044a62459f4080d00effae24ca11
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:conv | { #text -> conv size } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'9da4044a-6245-9f40-80d0-0effae24ca11').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '22 March 2018 9:57:33 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:conv | { #text -> conv size } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})