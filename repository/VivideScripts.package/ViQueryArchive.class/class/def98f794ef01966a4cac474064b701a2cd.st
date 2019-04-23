definitions
def98f794ef01966a4cac474064b701a2cd
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects select: [:methodReference | methodReference actualClass == ViQueryArchive class  ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'98f794ef-0196-6a4c-ac47-4064b701a2cd').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 5:54:15 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects select: [:methodReference | methodReference actualClass == ViQueryArchive class  ]]
		value: in) do: [:result | out addAll: result asList]]')})