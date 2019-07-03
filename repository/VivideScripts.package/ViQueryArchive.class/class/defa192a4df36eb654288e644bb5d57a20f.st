definitions
defa192a4df36eb654288e644bb5d57a20f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cs | {#text -> (ChangeSet current = cs ifTrue: [('<b>', cs name, '</b>') asHtmlText] ifFalse: [cs name])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'a192a4df-36eb-6542-88e6-44bb5d57a20f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:50:14 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cs | {#text -> (ChangeSet current = cs ifTrue: [(''<b>'', cs name, ''</b>'') asHtmlText] ifFalse: [cs name])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})