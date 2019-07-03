definitions
def9fc661bcd3e14b4d9836d852059fbf65
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:navi | navi allClasses collect: [:cls | (cls theMetaClass selectors
	detect: [:s | #(uniqueInstance instance default main current) includes: s]
	ifNone: []) ifNotNil: [:s | [(MethodReference class: cls theMetaClass selector: s) -> (cls perform: s)] on: Error do: []]]
		thenSelect: [:obj | obj value notNil]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'9fc661bc-d3e1-4b4d-9836-d852059fbf65').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 5:12:19 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:navi | navi allClasses collect: [:cls | (cls theMetaClass selectors
	detect: [:s | #(uniqueInstance instance default main current) includes: s]
	ifNone: []) ifNotNil: [:s | [(MethodReference class: cls theMetaClass selector: s) -> (cls perform: s)] on: Error do: []]]
		thenSelect: [:obj | obj value notNil]]]
		value: in) do: [:result | out addAll: result asList]]')
})