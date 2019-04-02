definitions
defbd2b186482ccfc4692ef5e3b97a5317d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs gather: [:o | o objects reversed gather: [:assoc |
		assoc value collect: [:ea | assoc key -> ea]]]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'bd2b1864-82cc-fc46-92ef-5e3b97a5317d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs gather: [:o | o objects reversed gather: [:assoc |
		assoc value collect: [:ea | assoc key -> ea]]]] value: in)]')})