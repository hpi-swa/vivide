definitions
def699d78cd6dcaff43b6303cdfecd1d06f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:someObjects | | result |
	"Remove duplicates without changing order. Remove nil too."
	result := OrderedCollection new.
	someObjects do: [:ea | (ea notNil and: [(result identityIncludes: ea) not])
		ifTrue: [result add: ea]].
	result]).
(#class -> ViQueryMapDefinition).
(#id -> #'699d78cd-6dca-ff43-b630-3cdfecd1d06f').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 4:30:17 pm')})).
(#sourceCode -> '[:someObjects | | result |
	"Remove duplicates without changing order. Remove nil too."
	result := OrderedCollection new.
	someObjects do: [:ea | (ea notNil and: [(result identityIncludes: ea) not])
		ifTrue: [result add: ea]].
	result]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})