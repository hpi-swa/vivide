definitions
def14956abbb9444f4e815541339243d931
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:package | package classesAndMetaClasses asArray]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'14956abb-b944-4f4e-8155-41339243d931').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:45:25 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:package | package classesAndMetaClasses asArray]]
		value: in) do: [:result | out addAll: result asList]]')})