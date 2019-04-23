definitions
deffa0441120baa3e4dabc2c54a247e5236
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allCallsOn: symbol]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'fa044112-0baa-3e4d-abc2-c54a247e5236').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 12:08:55 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allCallsOn: symbol]]
		value: in) do: [:result | out addAll: result asList]]')})