definitions
defeeb4a8f8acd3d540b76306d686bb7a33
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:binding :ctxt |
	true caseOf: {
		[binding key = #self or: [binding key = 'top of stack']]
			-> ['1) Receiver'].
		[ctxt contents anySatisfy: [:frame |
			frame methodNode arguments anySatisfy: [:node |
				node name = binding key]]]
			-> ['2) Arguments']
	} otherwise: ['3) Temporaries']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'eeb4a8f8-acd3-d540-b763-06d686bb7a33').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:binding :ctxt |
	true caseOf: {
		[binding key = #self or: [binding key = ''top of stack'']]
			-> [''1) Receiver''].
		[ctxt contents anySatisfy: [:frame |
			frame methodNode arguments anySatisfy: [:node |
				node name = binding key]]]
			-> [''2) Arguments'']
	} otherwise: [''3) Temporaries'']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})