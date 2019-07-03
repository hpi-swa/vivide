definitions
def4e5774bdf1055c4cb2aadc1bf152d439
	<definition>

	^ (Dictionary newFrom: {
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
})