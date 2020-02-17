steps
stepb080bd39a8a31744b982fb270b04627f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataPrimitiveInteractive to: value]
		ifFalse: [line key hasCategory: #dataPrimitiveInteractive]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'370b978c-4573-2249-b150-9e5c8bae6e94').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:07:34 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataPrimitiveInteractive to: value]
		ifFalse: [line key hasCategory: #dataPrimitiveInteractive]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'370b978c-4573-2249-b150-9e5c8bae6e94').
(#iconCode -> 'nil').
(#id -> #'b080bd39-a8a3-1744-b982-fb270b04627f').
(#isProperty -> true).
(#label -> nil).
(#next -> #'9a8f7fe5-e3fe-5e4e-8f65-c463b0cac3e9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:07:34 am').
(#headerText -> #DPi).
(#priority -> 5310)
}))
})