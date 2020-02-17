steps
step5c2e7b343c999341badbb111a003abb4
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | { op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification category ~= op obsoletion category ifTrue: [UiFugueIcons priceTagIcon] ifFalse: []).
	#balloonText -> 'Recategorized'}] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'40748765-88db-4945-8d6b-9c7f2debf6fb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | { op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification category ~= op obsoletion category ifTrue: [UiFugueIcons priceTagIcon] ifFalse: []).
	#balloonText -> ''Recategorized''}] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'40748765-88db-4945-8d6b-9c7f2debf6fb').
(#iconCode -> 'nil').
(#id -> #'5c2e7b34-3c99-9341-badb-b111a003abb4').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'P').
(#labelColor -> '#AAAAAA').
(#priority -> 1190)
}))
})