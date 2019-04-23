definitions
def43a540d6480d12439f9169cbaedd58ab
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'43a540d6-480d-1243-9f91-69cbaedd58ab').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:36:10 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result | out addAll: result asList]]')})