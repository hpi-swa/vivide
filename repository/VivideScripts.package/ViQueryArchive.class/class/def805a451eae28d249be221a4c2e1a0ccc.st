definitions
def805a451eae28d249be221a4c2e1a0ccc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:association | { #icon -> association key. #balloonText -> association value asString }]
		value: o), { #object -> o key }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'805a451e-ae28-d249-be22-1a4c2e1a0ccc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 December 2017 9:57:19 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:association | { #icon -> association key. #balloonText -> association value asString }]
		value: o), { #object -> o key }]]
			value: in) do: [:result | out add: result]]')})