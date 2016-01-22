definitions
def6fc7a56de6dd484492dec7d721dfc839
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:object | object isBehavior not or: [
	(objects includes: object superclass) not]]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'6fc7a56d-e6dd-4844-92de-c7d721dfc839').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:47:36 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:object | object isBehavior not or: [
	(objects includes: object superclass) not]]] value: in)]')})