definitions
defa340d182121da8419378c6dd65102090
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:ref1 :ref2 | ref1 selector < ref2 selector
	or: [ref1 selector = ref2 selector
		and: [ref1 classSymbol <= ref2 classSymbol]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'a340d182-121d-a841-9378-c6dd65102090').
(#inputKind -> Object).
(#mapType -> #twoArgs).
(#outputKind -> Boolean).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:ref1 :ref2 | ref1 selector < ref2 selector
	or: [ref1 selector = ref2 selector
		and: [ref1 classSymbol <= ref2 classSymbol]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})