definitions
defb7a301c0bb5ca14fa13db6e45ed4d473
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objects | objects select: [:someObject |
	([:obj | (obj selector beginsWith: #initialize) not] value: someObject) &
	([:obj | (obj selector beginsWith: #baseline) not] value: someObject) &
	([:obj | (obj selector endsWith: #Form) not] value: someObject) &
	([:obj | (obj selector beginsWith: #version) not] value: someObject) ]]).
(#class -> ViQueryMapDefinition).
(#id -> #'b7a301c0-bb5c-a14f-a13d-b6e45ed4d473').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:objects | objects select: [:someObject |
	([:obj | (obj selector beginsWith: #initialize) not] value: someObject) &
	([:obj | (obj selector beginsWith: #baseline) not] value: someObject) &
	([:obj | (obj selector endsWith: #Form) not] value: someObject) &
	([:obj | (obj selector beginsWith: #version) not] value: someObject) ]].').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})