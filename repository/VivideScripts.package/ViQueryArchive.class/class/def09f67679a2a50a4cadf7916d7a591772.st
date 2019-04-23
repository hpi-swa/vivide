definitions
def09f67679a2a50a4cadf7916d7a591772
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:obj | ([[:f | f asFileDirectory entries select: [:e | e isDirectory]] value: obj] on: Error do: [#()]),
	([[:f | f asFileDirectory entries select: [:e | e isDirectory not]] value: obj] on: Error do: [#()])]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'09f67679-a2a5-0a4c-adf7-916d7a591772').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:obj | ([[:f | f asFileDirectory entries select: [:e | e isDirectory]] value: obj] on: Error do: [#()]),
	([[:f | f asFileDirectory entries select: [:e | e isDirectory not]] value: obj] on: Error do: [#()])]]
		value: in) do: [:result | out addAll: result asList]]')})