definitions
defdb2f8193a5942c449742393eda0eb826
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:binding :ctxt |
	true caseOf: {
		[binding key = #self or: [binding key = 'top of stack']]
			-> ['1) Receiver'].
		[ctxt contents anySatisfy: [:frame |
			frame methodNode arguments anySatisfy: [:node |
				node name = binding key]]]
			-> ['2) Arguments']
	} otherwise: ['3) Temporaries']]).
(#class -> ViQueryMapDefinition).
(#id -> #'db2f8193-a594-2c44-9742-393eda0eb826').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:binding :ctxt |
	true caseOf: {
		[binding key = #self or: [binding key = ''top of stack'']]
			-> [''1) Receiver''].
		[ctxt contents anySatisfy: [:frame |
			frame methodNode arguments anySatisfy: [:node |
				node name = binding key]]]
			-> [''2) Arguments'']
	} otherwise: [''3) Temporaries'']]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})