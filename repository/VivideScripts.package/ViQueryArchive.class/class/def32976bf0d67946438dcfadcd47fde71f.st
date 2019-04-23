definitions
def32976bf0d67946438dcfadcd47fde71f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:methodReference | methodReference actualClass executeMethod: methodReference compiledMethod]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'32976bf0-d679-4643-8dcf-adcd47fde71f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 5:57:32 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:methodReference | methodReference actualClass executeMethod: methodReference compiledMethod]]
		value: in) do: [:result | out addAll: result asList]]')})