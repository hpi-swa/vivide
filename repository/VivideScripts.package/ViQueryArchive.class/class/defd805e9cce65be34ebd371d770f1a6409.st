definitions
defd805e9cce65be34ebd371d770f1a6409
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:behaviors | SystemNavigation allCallsOn: #flag: fromBehaviors: behaviors sorted: true] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'d805e9cc-e65b-e34e-bd37-1d770f1a6409').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:45:44 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:behaviors | SystemNavigation allCallsOn: #flag: fromBehaviors: behaviors sorted: true] value: in)]')})