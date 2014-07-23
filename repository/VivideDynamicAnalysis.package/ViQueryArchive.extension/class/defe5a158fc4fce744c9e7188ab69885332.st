*VivideDynamicAnalysis-definitions
defe5a158fc4fce744c9e7188ab69885332
	<definition>

	^ ((Dictionary new) add: (#inputKind->SdCallgraphDiff); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'e5a158fc-4fce-744c-9e71-88ab69885332'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | {
	#text -> (obj isDifferent
		ifTrue: [ViLabelService doObject: obj secondNode ifNil: ['''']]
		ifFalse: ['''']).
	#icon -> (obj isDifferent
		ifTrue: [ViIconService doObject: obj secondNode]
		ifFalse: [])}]'); add: (#mapType->#each); add: (#block->[:obj | {
	#text -> (obj isDifferent
		ifTrue: [ViLabelService doObject: obj secondNode ifNil: ['']]
		ifFalse: ['']).
	#icon -> (obj isDifferent
		ifTrue: [ViIconService doObject: obj secondNode]
		ifFalse: [])}]); yourself)