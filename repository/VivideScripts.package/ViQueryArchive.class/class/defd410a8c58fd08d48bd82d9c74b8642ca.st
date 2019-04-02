definitions
defd410a8c58fd08d48bd82d9c74b8642ca
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:cls |
	(cls inheritsFrom: Morph) and: [(cls methodDict keys count: [:selector |
			#(grabKeyboard hasKeyboard) includes: selector]) == 1]]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'d410a8c5-8fd0-8d48-bd82-d9c74b8642ca').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:cls |
	(cls inheritsFrom: Morph) and: [(cls methodDict keys count: [:selector |
			#(grabKeyboard hasKeyboard) includes: selector]) == 1]]] value: in)]')})