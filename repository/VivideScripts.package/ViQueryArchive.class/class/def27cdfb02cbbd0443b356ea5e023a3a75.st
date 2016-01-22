definitions
def27cdfb02cbbd0443b356ea5e023a3a75
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:tag | #uiSetup in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]).
(#class -> ViQueryMapDefinition).
(#id -> #'27cdfb02-cbbd-0443-b356-ea5e023a3a75').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2014 8:52:10 am')})).
(#sourceCode -> '[:tag | #uiSetup in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})