definitions
def2049b680ff5b91428d468747950a70d2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
	| class selector sourceString |
	class := method methodClass.
	selector := method selector.
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: ['error'].
	{ #text -> (ViTextStyler new
		classOrMetaClass: class;
		styledTextFor: (class prettyPrinterClass format: sourceString in: class notifying: nil) asText) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'2049b680-ff5b-9142-8d46-8747950a70d2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 11:22:13 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
	| class selector sourceString |
	class := method methodClass.
	selector := method selector.
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: [''error''].
	{ #text -> (ViTextStyler new
		classOrMetaClass: class;
		styledTextFor: (class prettyPrinterClass format: sourceString in: class notifying: nil) asText) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})