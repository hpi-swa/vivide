steps
stepacccd73850175e44ba68cc46761670dc
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:state | | cls |
	cls := Smalltalk at: (state properties at: #className ifAbsent: []) ifAbsent: [].
	
	{
	#text -> (state properties at: #headerText).
	#icon -> (cls
			ifNotNil: [cls editorIcon]
			ifNil: [ViIconService doObject: (state properties at: #object ifAbsent: [nil])])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'4e5774bd-f105-5c4c-b2aa-dc1bf152d439').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2014 12:01:18 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:state | | cls |
	cls := Smalltalk at: (state properties at: #className ifAbsent: []) ifAbsent: [].
	
	{
	#text -> (state properties at: #headerText).
	#icon -> (cls
			ifNotNil: [cls editorIcon]
			ifNil: [ViIconService doObject: (state properties at: #object ifAbsent: [nil])])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4e5774bd-f105-5c4c-b2aa-dc1bf152d439').
(#iconCode -> 'nil').
(#id -> #'acccd738-5017-5e44-ba68-cc46761670dc').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2014 12:01:18 pm').
(#priority -> 6100)
}))
})