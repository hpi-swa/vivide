definitions
def84d0131d72de2b40a9f56b52e2aa1484
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | 
	| receiverClass |
	receiverClass := obj instVarNamed: #class.
	{#text -> ((ViObjectOriginService doObject: obj method), 
		(receiverClass = obj method methodClass 
			ifTrue: ['']
			ifFalse: [' (', receiverClass theNonMetaClass name, ')']))}]).
(#class -> ViQueryMapDefinition).
(#id -> #'84d0131d-72de-2b40-a9f5-6b52e2aa1484').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | 
	| receiverClass |
	receiverClass := obj instVarNamed: #class.
	{#text -> ((ViObjectOriginService doObject: obj method), 
		(receiverClass = obj method methodClass 
			ifTrue: ['''']
			ifFalse: ['' ('', receiverClass theNonMetaClass name, '')'']))}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})