definitions
def6494337522d7314f9d385be28169ee58
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:stamp | { #text -> ('<font color="#AAAAAA">{1}</font><br>{2}' format: {
	ViToolSet printRelativeTimeStamp: stamp key.
	(stamp value description withNoLineLongerThan: 35) escapeHtmlText}) asHtmlText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'64943375-22d7-314f-9d38-5be28169ee58').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '16 November 2013 4:58:02 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:stamp | { #text -> (''<font color="#AAAAAA">{1}</font><br>{2}'' format: {
	ViToolSet printRelativeTimeStamp: stamp key.
	(stamp value description withNoLineLongerThan: 35) escapeHtmlText}) asHtmlText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})