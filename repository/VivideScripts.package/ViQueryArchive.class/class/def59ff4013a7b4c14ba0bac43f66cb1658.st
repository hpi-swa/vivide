definitions
def59ff4013a7b4c14ba0bac43f66cb1658
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:tag | #modelWrite in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]).
(#class -> ViQueryMapDefinition).
(#id -> #'59ff4013-a7b4-c14b-a0ba-c43f66cb1658').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2014 8:53:15 am')})).
(#sourceCode -> '[:tag | #modelWrite in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})