*VivideDynamicAnalysis-definitions
def59e41aec00173e4e9859ac773a00bd98
	<definition>

	^ ((Dictionary new) add: (#inputKind->SdCallgraphDiff); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'59e41aec-0017-3e4e-9859-ac773a00bd98'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | {
	#text -> (obj isDifferent
		ifTrue: [ViLabelService doObject: obj firstNode ifNil: ['''']]
		ifFalse: ['''']).
	#icon -> (obj isDifferent
		ifTrue: [ViIconService doObject: obj firstNode]
		ifFalse: [])}]'); add: (#mapType->#each); add: (#block->[:obj | {
	#text -> (obj isDifferent
		ifTrue: [ViLabelService doObject: obj firstNode ifNil: ['']]
		ifFalse: ['']).
	#icon -> (obj isDifferent
		ifTrue: [ViIconService doObject: obj firstNode]
		ifFalse: [])}]); yourself)