definitions
def0f9b9bc28b069a4bbbcfc51123a6a73b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:behavior | behavior subclasses]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'0f9b9bc2-8b06-9a4b-bbcf-c51123a6a73b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:behavior | behavior subclasses]]
		value: in) do: [:result | out addAll: result asList]]')})