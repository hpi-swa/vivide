definitions
def2b3e53a88a744f4e8009e73f433a0b29
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{('<font size="8" color="#AAAAAA">' , (ViLabelStringService doObject: group first) , '</font>') asHtmlText}}}. group}]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'2b3e53a8-8a74-4f4e-8009-e73f433a0b29').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'68068e65-5860-4944-9c02-f840fd3b31ec').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 4:36:46 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{(''<font size="8" color="#AAAAAA">'' , (ViLabelStringService doObject: group first) , ''</font>'') asHtmlText}}}. group}]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})