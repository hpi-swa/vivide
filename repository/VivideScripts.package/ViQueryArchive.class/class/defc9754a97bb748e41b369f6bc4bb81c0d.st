definitions
defc9754a97bb748e41b369f6bc4bb81c0d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:organizer | organizer useFrequencyForDefinitions]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'c9754a97-bb74-8e41-b369-f6bc4bb81c0d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 October 2013 5:06:48 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:organizer | organizer useFrequencyForDefinitions]]
		value: in) do: [:result | out addAll: result asList]]')})