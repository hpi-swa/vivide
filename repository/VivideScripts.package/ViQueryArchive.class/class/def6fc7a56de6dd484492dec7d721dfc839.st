definitions
def6fc7a56de6dd484492dec7d721dfc839
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'20 May 2015 2:47:36 pm'); yourself)); add: (#id->#'6fc7a56d-e6dd-4844-92de-c7d721dfc839'); add: (#block->[:in :out | out addAll: ([:objects | objects select: [:object | object isBehavior not or: [
	(objects includes: object superclass) not]]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:objects | objects select: [:object | object isBehavior not or: [
	(objects includes: object superclass) not]]] value: in)]'); yourself)