definitions
def50041bc7921ec24fbe8c5cf9144c4040
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:tag | #spawnTool in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]).
(#class -> ViQueryMapDefinition).
(#id -> #'50041bc7-921e-c24f-be8c-5cf9144c4040').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2014 9:39:56 am')})).
(#sourceCode -> '[:tag | #spawnTool in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})