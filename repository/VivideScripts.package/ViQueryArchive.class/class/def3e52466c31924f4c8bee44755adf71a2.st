definitions
def3e52466c31924f4c8bee44755adf71a2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 isBehavior
		ifTrue: [true "no change"]
		ifFalse: [obj1 selector <= obj2 selector]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'3e52466c-3192-4f4c-8bee-44755adf71a2').
(#inputKind -> Object).
(#mapType -> #twoArgs).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:00:56 pm')})).
(#sourceCode -> '[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 isBehavior
		ifTrue: [true "no change"]
		ifFalse: [obj1 selector <= obj2 selector]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})