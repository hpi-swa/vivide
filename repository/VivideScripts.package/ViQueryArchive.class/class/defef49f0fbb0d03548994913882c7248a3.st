definitions
defef49f0fbb0d03548994913882c7248a3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:byteString | byteString unescapeEntities convertFromEncoding: 'utf-8'  ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'ef49f0fb-b0d0-3548-9949-13882c7248a3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 October 2014 3:26:15 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:byteString | byteString unescapeEntities convertFromEncoding: ''utf-8''  ]]
		value: in) do: [:result | out addAll: result asList]]')})