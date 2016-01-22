definitions
deff7713f3d1af3de439510b66470425a96
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | 
	Time now print24, ' -- ',
	
	(obj isForm
		ifTrue: ['Picture successfully loaded.\ Width: {1}\ Height: {2}\ Depth: {3}' withCRs format: {obj width.obj height.obj depth}]
		ifFalse: [obj asString])]).
(#class -> ViQueryMapDefinition).
(#id -> #'f7713f3d-1af3-de43-9510-b66470425a96').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:17:12 pm')})).
(#sourceCode -> '[:obj | 
	Time now print24, '' -- '',
	
	(obj isForm
		ifTrue: [''Picture successfully loaded.\ Width: {1}\ Height: {2}\ Depth: {3}'' withCRs format: {obj width.obj height.obj depth}]
		ifFalse: [obj asString])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})