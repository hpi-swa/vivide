definitions
def84d0131d72de2b40a9f56b52e2aa1484
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'84d0131d-72de-2b40-a9f5-6b52e2aa1484'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | 
	| receiverClass |
	receiverClass := obj instVarNamed: #class.
	{#text -> ((ViObjectOriginService doObject: obj method), 
		(receiverClass = obj method methodClass 
			ifTrue: ['''']
			ifFalse: ['' ('', receiverClass theNonMetaClass name, '')'']))}]'); add: (#mapType->#each); add: (#block->[:obj | 
	| receiverClass |
	receiverClass := obj instVarNamed: #class.
	{#text -> ((ViObjectOriginService doObject: obj method), 
		(receiverClass = obj method methodClass 
			ifTrue: ['']
			ifFalse: [' (', receiverClass theNonMetaClass name, ')']))}]); yourself)