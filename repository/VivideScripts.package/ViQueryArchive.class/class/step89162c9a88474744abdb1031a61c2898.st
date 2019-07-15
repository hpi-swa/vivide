steps
step89162c9a88474744abdb1031a61c2898
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'eeb4a8f8-acd3-d540-b763-06d686bb7a33').
(#iconCode -> 'nil').
(#id -> #'89162c9a-8847-4744-abdb-1031a61c2898').
(#isProperty -> false).
(#label -> nil).
(#next -> #'ba8137af-8a11-c74d-8e4b-f2648a10a968').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2420)
}))
})