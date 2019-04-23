definitions
def86327a87dc80ba43b648c2b877187bb3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | { #text -> (flag comment ifNil: [('<i>\<', flag symbol, '\></i>') asHtmlText]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'86327a87-dc80-ba43-b648-c2b877187bb3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:56:36 pm').
(#labelColor -> '007F00')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | { #text -> (flag comment ifNil: [(''<i>\<'', flag symbol, ''\></i>'') asHtmlText]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})