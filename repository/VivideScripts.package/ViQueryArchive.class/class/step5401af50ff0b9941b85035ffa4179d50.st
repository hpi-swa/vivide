steps
step5401af50ff0b9941b85035ffa4179d50
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | { op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification timeStamp ~= op obsoletion timeStamp
		ifTrue: [UiFugueIcons clockSmallIcon] ifFalse: []).
	#balloonText -> 'Time stamp changed'}] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'bee72a98-45a1-024b-ac42-82fcdc3d1df5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | { op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification timeStamp ~= op obsoletion timeStamp
		ifTrue: [UiFugueIcons clockSmallIcon] ifFalse: []).
	#balloonText -> ''Time stamp changed''}] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'bee72a98-45a1-024b-ac42-82fcdc3d1df5').
(#iconCode -> 'nil').
(#id -> #'5401af50-ff0b-9941-b850-35ffa4179d50').
(#isProperty -> true).
(#label -> nil).
(#next -> #'5c2e7b34-3c99-9341-badb-b111a003abb4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'T').
(#labelColor -> '#AAAAAA').
(#priority -> 1180)
}))
})