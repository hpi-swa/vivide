definitions
defa24a8241358e5643a2f162eed7d243c0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | cls withAllSuperclasses]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'a24a8241-358e-5643-a2f1-62eed7d243c0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:55:27 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | cls withAllSuperclasses]]
		value: in) do: [:result | out addAll: result asList]]')})