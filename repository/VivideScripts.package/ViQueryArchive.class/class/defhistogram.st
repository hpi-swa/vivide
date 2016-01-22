definitions
defhistogram
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:bag | bag sortedCounts in: [:histogram |
		histogram collect: [:map |
			{map key. histogram first key. map value}]]]).
(#class -> ViQueryMapDefinition).
(#id -> #histogram).
(#inputKind -> Bag).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:30:24 pm')})).
(#sourceCode -> '[:bag | bag sortedCounts in: [:histogram |
		histogram collect: [:map |
			{map key. histogram first key. map value}]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})