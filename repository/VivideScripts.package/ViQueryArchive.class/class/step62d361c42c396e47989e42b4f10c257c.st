steps
step62d361c42c396e47989e42b4f10c257c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataPrimitiveConstant to: value]
		ifFalse: [line key hasCategory: #dataPrimitiveConstant]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'8148fd10-5e79-af43-989b-173d5d4a6f56').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:04:38 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataPrimitiveConstant to: value]
		ifFalse: [line key hasCategory: #dataPrimitiveConstant]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8148fd10-5e79-af43-989b-173d5d4a6f56').
(#iconCode -> 'nil').
(#id -> #'62d361c4-2c39-6e47-989e-42b4f10c257c').
(#isProperty -> true).
(#label -> nil).
(#next -> #'b080bd39-a8a3-1744-b982-fb270b04627f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:04:38 am').
(#headerText -> #DPc).
(#priority -> 5300)
}))
})