definitions
def699d78cd6dcaff43b6303cdfecd1d06f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objs | | out |
	"Remove duplicates without changing order. Remove nil too."
	out := OrderedCollection new.
	objs do: [:o | (o notNil and: [(out identityIncludes: o) not])
		ifTrue: [out add: o]].
	out]).
(#class -> ViQueryMapDefinition).
(#id -> #'699d78cd-6dca-ff43-b630-3cdfecd1d06f').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 4:30:17 pm')})).
(#sourceCode -> '[:objs | | out |
	"Remove duplicates without changing order. Remove nil too."
	out := OrderedCollection new.
	objs do: [:o | (o notNil and: [(out identityIncludes: o) not])
		ifTrue: [out add: o]].
	out]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})