definitions
def52ea4d28d73e1746b6d3d9bc484e9541
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:someObjects | | result |
	"Remove duplicates without changing order. Remove nil too."
	result := OrderedCollection new.
	someObjects do: [:ea | (ea notNil and: [(result identityIncludes: ea) not])
		ifTrue: [result add: ea]].
	result] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'52ea4d28-d73e-1746-b6d3-d9bc484e9541').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 4:30:17 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:someObjects | | result |
	"Remove duplicates without changing order. Remove nil too."
	result := OrderedCollection new.
	someObjects do: [:ea | (ea notNil and: [(result identityIncludes: ea) not])
		ifTrue: [result add: ea]].
	result] value: in)]')
})