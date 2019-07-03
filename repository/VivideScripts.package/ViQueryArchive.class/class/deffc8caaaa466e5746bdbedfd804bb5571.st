definitions
deffc8caaaa466e5746bdbedfd804bb5571
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | {
	#text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: ["ViLabelService doObject: def asMethodReference" def selector]
		ifFalse: [def description in: [:d | d at: (2 min: d size)]]]).
	#icon -> (true caseOf: {
		[op isAddition] -> [UiFugueIcons plusSmallIcon].
		[op isModification] -> [UiFugueIcons pencilSmallIcon].
		[op isRemoval] -> [UiFugueIcons minusSmallIcon]} otherwise: [])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'fc8caaaa-466e-5746-bdbe-dfd804bb5571').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | {
	#text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: ["ViLabelService doObject: def asMethodReference" def selector]
		ifFalse: [def description in: [:d | d at: (2 min: d size)]]]).
	#icon -> (true caseOf: {
		[op isAddition] -> [UiFugueIcons plusSmallIcon].
		[op isModification] -> [UiFugueIcons pencilSmallIcon].
		[op isRemoval] -> [UiFugueIcons minusSmallIcon]} otherwise: [])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})