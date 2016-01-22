definitions
def9f715ab1b7b6be4da6e2c00f2d37c7ef
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj |
	{#text -> (ViLabelService doObject: obj third).
	#color -> ((obj third isBehavior and: [obj third inheritsFrom: Collection])
		ifTrue: [Color yellow]
		ifFalse: ["transparent"])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'9f715ab1-b7b6-be4d-a6e2-c00f2d37c7ef').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj |
	{#text -> (ViLabelService doObject: obj third).
	#color -> ((obj third isBehavior and: [obj third inheritsFrom: Collection])
		ifTrue: [Color yellow]
		ifFalse: ["transparent"])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})