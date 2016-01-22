definitions
defd681b31ef0fa9142933956de9318a643
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 selector <= obj2 selector]]).
(#class -> ViQueryMapDefinition).
(#id -> #'d681b31e-f0fa-9142-9339-56de9318a643').
(#inputKind -> Object).
(#mapType -> #twoArgs).
(#outputKind -> Boolean).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 6:15:59 pm')})).
(#sourceCode -> '[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 selector <= obj2 selector]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})