definitions
defebbfc22f65be0e4da16b11136d5f86c2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:hit | { #text -> ((((hit at: #info) at: #title) at: #text) convertFromEncoding: 'utf-8') unescapeEntities asHtmlText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'ebbfc22f-65be-0e4d-a16b-11136d5f86c2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 2:37:53 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:hit | { #text -> ((((hit at: #info) at: #title) at: #text) convertFromEncoding: ''utf-8'') unescapeEntities asHtmlText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})