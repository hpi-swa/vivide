definitions
defbee72a9845a1024bac4282fcdc3d1df5
	<definition>

	^ (Dictionary newFrom: {
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
})