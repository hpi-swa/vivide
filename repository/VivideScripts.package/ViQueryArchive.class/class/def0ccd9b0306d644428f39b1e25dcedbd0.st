definitions
def0ccd9b0306d644428f39b1e25dcedbd0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ProcessBrowser nameAndRulesFor: obj) first.
	#icon -> (obj isSuspended ifTrue: [UiFugueIcons controlPauseSmallIcon] ifFalse: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'0ccd9b03-06d6-4442-8f39-b1e25dcedbd0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 4:56:20 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ProcessBrowser nameAndRulesFor: obj) first.
	#icon -> (obj isSuspended ifTrue: [UiFugueIcons controlPauseSmallIcon] ifFalse: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})