definitions
def67ae669c22a9054cbd81fc6b015f784c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | {
	#icon -> (def receiverIsCollection
		ifTrue: [ViIconService collection]
		ifFalse: [ViIconService blank]).
	#text -> def inputKind asString}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'67ae669c-22a9-054c-bd81-fc6b015f784c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 5:10:11 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | {
	#icon -> (def receiverIsCollection
		ifTrue: [ViIconService collection]
		ifFalse: [ViIconService blank]).
	#text -> def inputKind asString}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})