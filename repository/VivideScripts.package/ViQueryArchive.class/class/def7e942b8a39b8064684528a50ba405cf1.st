definitions
def7e942b8a39b8064684528a50ba405cf1
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:fd | [fd entries] on: InvalidDirectoryError do: [#()]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'7e942b8a-39b8-0646-8452-8a50ba405cf1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 4:49:40 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:fd | [fd entries] on: InvalidDirectoryError do: [#()]]]
		value: in) do: [:result | out addAll: result asList]]')})