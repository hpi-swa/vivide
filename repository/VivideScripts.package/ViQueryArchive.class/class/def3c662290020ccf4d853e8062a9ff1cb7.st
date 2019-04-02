definitions
def3c662290020ccf4d853e8062a9ff1cb7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:process | process == Processor activeProcess
	ifTrue: [thisContext]
	ifFalse: [process suspendedContext]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'3c662290-020c-cf4d-853e-8062a9ff1cb7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 5:10:33 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:process | process == Processor activeProcess
	ifTrue: [thisContext]
	ifFalse: [process suspendedContext]]]
		value: in) do: [:result | out addAll: result asList]]')})