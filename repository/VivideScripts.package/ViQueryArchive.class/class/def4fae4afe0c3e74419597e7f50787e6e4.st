definitions
def4fae4afe0c3e74419597e7f50787e6e4
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:def | {
	#icon -> (def receiverIsCollection
		ifTrue: [ViIconService collection]
		ifFalse: [ViIconService blank]).
	#text -> def inputKind asString}]).
(#class -> ViQueryMapDefinition).
(#id -> #'4fae4afe-0c3e-7441-9597-e7f50787e6e4').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 5:10:11 pm')})).
(#sourceCode -> '[:def | {
	#icon -> (def receiverIsCollection
		ifTrue: [ViIconService collection]
		ifFalse: [ViIconService blank]).
	#text -> def inputKind asString}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})