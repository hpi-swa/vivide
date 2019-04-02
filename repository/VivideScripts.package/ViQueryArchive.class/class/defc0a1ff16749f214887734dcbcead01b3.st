definitions
defc0a1ff16749f214887734dcbcead01b3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (obj workingCopy ancestry ancestorStringWithout: obj packageName).
	#icon -> ((((obj hasPreamble or: [obj hasPostscript]) or: [obj hasPreambleOfRemoval] )or: [obj hasPostscriptOfRemoval]) ifTrue: [UiFugueIcons blueDocumentSmallIcon] ifFalse: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'c0a1ff16-749f-2148-8773-4dcbcead01b3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (obj workingCopy ancestry ancestorStringWithout: obj packageName).
	#icon -> ((((obj hasPreamble or: [obj hasPostscript]) or: [obj hasPreambleOfRemoval] )or: [obj hasPostscriptOfRemoval]) ifTrue: [UiFugueIcons blueDocumentSmallIcon] ifFalse: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})