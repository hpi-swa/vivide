definitions
defd29a5c0a426e9347943695c9da32e38c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {#icon -> ((obj at: #projectDescription) ifEmpty: [ViIcons blankIcon] ifNotEmpty: [UiSilkIcons commentIcon]). #balloonText -> (obj at: #projectDescription). #text -> (obj at: #path)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'d29a5c0a-426e-9347-9436-95c9da32e38c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 5:15:04 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {#icon -> ((obj at: #projectDescription) ifEmpty: [ViIcons blankIcon] ifNotEmpty: [UiSilkIcons commentIcon]). #balloonText -> (obj at: #projectDescription). #text -> (obj at: #path)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})