definitions
defe35033ecdd91fe4b8f5913e3c734740e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{('<font size="8" color="#AAAAAA">' , (ViLabelStringService doObject: group first) , '</font>') asHtmlText}}}. group}]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'e35033ec-dd91-fe4b-8f59-13e3c734740e').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'2b3e53a8-8a74-4f4e-8009-e73f433a0b29').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{(''<font size="8" color="#AAAAAA">'' , (ViLabelStringService doObject: group first) , ''</font>'') asHtmlText}}}. group}]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})