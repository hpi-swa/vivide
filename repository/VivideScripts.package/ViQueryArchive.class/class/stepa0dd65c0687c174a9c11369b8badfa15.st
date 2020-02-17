steps
stepa0dd65c0687c174a9c11369b8badfa15
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:class :offset | "See TestRunner >> classList"
	| ident |
	ident := String 
		new: 2 * (0 max: class allSuperclasses size - offset contents)
		withAll: $ .

	{ #text -> (
		class isAbstract
			ifFalse: [ ident , class name ]
			ifTrue: [ 
				ident asText , class name asText 
					addAttribute: TextEmphasis italic;
					yourself ]
	) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'09894e45-157f-0148-b77c-181b1a03e0c4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:57:29 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:class :offset | "See TestRunner >> classList"
	| ident |
	ident := String 
		new: 2 * (0 max: class allSuperclasses size - offset contents)
		withAll: $ .

	{ #text -> (
		class isAbstract
			ifFalse: [ ident , class name ]
			ifTrue: [ 
				ident asText , class name asText 
					addAttribute: TextEmphasis italic;
					yourself ]
	) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'09894e45-157f-0148-b77c-181b1a03e0c4').
(#iconCode -> 'nil').
(#id -> #'a0dd65c0-687c-174a-9c11-369b8badfa15').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:57:29 am').
(#inputKind -> Behavior).
(#priority -> 5580)
}))
})