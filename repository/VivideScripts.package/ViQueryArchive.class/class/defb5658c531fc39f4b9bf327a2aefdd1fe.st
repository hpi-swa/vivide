definitions
defb5658c531fc39f4b9bf327a2aefdd1fe
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [SystemNavigation allMethodsSelect: [:m | m linesOfCode > 100]] value in: [:result |
	out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'b5658c53-1fc3-9f4b-9bf3-27a2aefdd1fe').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | [SystemNavigation allMethodsSelect: [:m | m linesOfCode > 100]] value in: [:result |
	out addAll: result asList]]')})