definitions
def6492bdccbf9b0d499b897d0bb90d7cd9
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 February 2015 2:29:06 pm'); yourself)); add: (#id->#'6492bdcc-bf9b-0d49-9b89-7d0bb90d7cd9'); add: (#block->[:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]'); yourself)