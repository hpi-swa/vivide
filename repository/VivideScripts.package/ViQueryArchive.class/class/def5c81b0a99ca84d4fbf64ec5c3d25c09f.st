definitions
def5c81b0a99ca84d4fbf64ec5c3d25c09f
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'7 December 2015 2:00:40 pm'); yourself)); add: (#id->#'5c81b0a9-9ca8-4d4f-bf64-ec5c3d25c09f'); add: (#block->[:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]'); yourself)