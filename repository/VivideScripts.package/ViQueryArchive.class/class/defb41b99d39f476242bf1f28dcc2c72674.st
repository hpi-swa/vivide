definitions
defb41b99d39f476242bf1f28dcc2c72674
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pkg | 
	#(halt haltOnce haltIf: haltIfNil halt: haltOnce: haltOnCount:) gather: [:symbol |
		(SystemNavigation allCallsOn: symbol localToPackage: pkg) gather: [:ref |
			ViFlagComment newListFromReference: ref message: symbol]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'b41b99d3-9f47-6242-bf1f-28dcc2c72674').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 3:38:09 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pkg | 
	#(halt haltOnce haltIf: haltIfNil halt: haltOnce: haltOnCount:) gather: [:symbol |
		(SystemNavigation allCallsOn: symbol localToPackage: pkg) gather: [:ref |
			ViFlagComment newListFromReference: ref message: symbol]]]]
		value: in) do: [:result | out addAll: result asList]]')})