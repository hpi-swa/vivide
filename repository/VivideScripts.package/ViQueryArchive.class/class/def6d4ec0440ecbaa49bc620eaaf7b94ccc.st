definitions
def6d4ec0440ecbaa49bc620eaaf7b94ccc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:process | 
	"See Debugger >> expandStack, fullyExpandStack"
	process suspendedContext
		ifNil: [#()]
		ifNotNil: [:ctxt | ctxt stackOfSize: 10 + 100000]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'6d4ec044-0ecb-aa49-bc62-0eaaf7b94ccc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 5:50:41 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:process | 
	"See Debugger >> expandStack, fullyExpandStack"
	process suspendedContext
		ifNil: [#()]
		ifNotNil: [:ctxt | ctxt stackOfSize: 10 + 100000]]]
		value: in) do: [:result | out addAll: result asList]]')})