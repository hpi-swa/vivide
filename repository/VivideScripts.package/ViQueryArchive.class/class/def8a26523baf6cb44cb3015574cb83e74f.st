definitions
def8a26523baf6cb44cb3015574cb83e74f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:tag | #modelRead in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]).
(#class -> ViQueryMapDefinition).
(#id -> #'8a26523b-af6c-b44c-b301-5574cb83e74f').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 February 2014 3:45:20 pm')})).
(#sourceCode -> '[:tag | #modelRead in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})