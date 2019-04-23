definitions
def06f98eeba401204fb4af9c40942ce7b0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:orga | orga orderedSteps select: [:step | step isSpecial]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'06f98eeb-a401-204f-b4af-9c40942ce7b0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:43:44 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:orga | orga orderedSteps select: [:step | step isSpecial]]]
		value: in) do: [:result | out addAll: result asList]]')})