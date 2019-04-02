definitions
def36a58b830ad6ab4583c44ad328747a8a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | CodeHolder new
	contents: (method methodClass newCompiler format: method getSource in: method methodClass notifying: nil decorated: true);
	instVarNamed: #currentCompiledMethod put: method;
	yourself]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'36a58b83-0ad6-ab45-83c4-4ad328747a8a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 February 2014 2:02:54 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | CodeHolder new
	contents: (method methodClass newCompiler format: method getSource in: method methodClass notifying: nil decorated: true);
	instVarNamed: #currentCompiledMethod put: method;
	yourself]]
		value: in) do: [:result | out addAll: result asList]]')})