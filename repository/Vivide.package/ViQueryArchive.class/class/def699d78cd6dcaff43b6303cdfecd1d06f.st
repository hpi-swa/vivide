definitions
def699d78cd6dcaff43b6303cdfecd1d06f
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'8 November 2013 4:30:17 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'699d78cd-6dca-ff43-b630-3cdfecd1d06f'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:objs | | out |
	"Remove duplicates without changing order. Remove nil too."
	out := OrderedCollection new.
	objs do: [:o | (o notNil and: [(out identityIncludes: o) not])
		ifTrue: [out add: o]].
	out]'); add: (#mapType->#all); add: (#block->[:objs | | out |
	"Remove duplicates without changing order. Remove nil too."
	out := OrderedCollection new.
	objs do: [:o | (o notNil and: [(out identityIncludes: o) not])
		ifTrue: [out add: o]].
	out]); yourself)