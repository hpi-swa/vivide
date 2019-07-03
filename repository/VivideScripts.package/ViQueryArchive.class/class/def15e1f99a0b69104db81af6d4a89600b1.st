definitions
def15e1f99a0b69104db81af6d4a89600b1
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> ((ViLabelStringService doObject: obj value) truncateWithElipsisTo: 30).
	#icon -> (((ViIconService doObject: obj value)
		ifNil: [ViIcons blankIcon]) scaledToSize: 16@16)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'15e1f99a-0b69-104d-b81a-f6d4a89600b1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 10:36:49 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> ((ViLabelStringService doObject: obj value) truncateWithElipsisTo: 30).
	#icon -> (((ViIconService doObject: obj value)
		ifNil: [ViIcons blankIcon]) scaledToSize: 16@16)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})