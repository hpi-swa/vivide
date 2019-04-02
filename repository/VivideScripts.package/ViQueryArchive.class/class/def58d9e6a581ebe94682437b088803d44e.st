definitions
def58d9e6a581ebe94682437b088803d44e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | 
	Time now print24, ' -- ',
	
	(obj isForm
		ifTrue: ['Picture successfully loaded.\ Width: {1}\ Height: {2}\ Depth: {3}' withCRs format: {obj width.obj height.obj depth}]
		ifFalse: [obj asString])]).
(#class -> ViQueryStepDefinition).
(#id -> #'58d9e6a5-81eb-e946-8243-7b088803d44e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:17:12 pm')})).
(#sourceCode -> '[:obj | 
	Time now print24, '' -- '',
	
	(obj isForm
		ifTrue: [''Picture successfully loaded.\ Width: {1}\ Height: {2}\ Depth: {3}'' withCRs format: {obj width.obj height.obj depth}]
		ifFalse: [obj asString])]')})