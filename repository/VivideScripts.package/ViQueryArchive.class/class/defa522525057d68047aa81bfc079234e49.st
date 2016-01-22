definitions
defa522525057d68047aa81bfc079234e49
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:op1 :op2 | 
	op1 definition fullTimeStamp >= op2 definition fullTimeStamp]).
(#class -> ViQueryMapDefinition).
(#id -> #'a5225250-57d6-8047-aa81-bfc079234e49').
(#inputKind -> Object).
(#mapType -> #twoArgs).
(#outputKind -> Boolean).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:op1 :op2 | 
	op1 definition fullTimeStamp >= op2 definition fullTimeStamp]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})