definitions
defdb2f8193a5942c449742393eda0eb826
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'db2f8193-a594-2c44-9742-393eda0eb826'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:binding :ctxt |
	true caseOf: {
		[binding key = #self or: [binding key = ''top of stack'']]
			-> [''1) Receiver''].
		[ctxt contents anySatisfy: [:frame |
			frame methodNode arguments anySatisfy: [:node |
				node name = binding key]]]
			-> [''2) Arguments'']
	} otherwise: [''3) Temporaries'']]'); add: (#mapType->#each); add: (#block->[:binding :ctxt |
	true caseOf: {
		[binding key = #self or: [binding key = 'top of stack']]
			-> ['1) Receiver'].
		[ctxt contents anySatisfy: [:frame |
			frame methodNode arguments anySatisfy: [:node |
				node name = binding key]]]
			-> ['2) Arguments']
	} otherwise: ['3) Temporaries']]); yourself)