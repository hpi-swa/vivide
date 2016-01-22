definitions
def10e4c6d030b81549afbbd936fb6c7a9c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | obj isVariableBinding
	ifTrue: ['** variables **']
	ifFalse: [obj isBehavior
		ifTrue: [obj isTrait
			ifTrue: ['** traits **']
			ifFalse: ['** inheritance **']]
		ifFalse: [obj methodClass organization categoryOfElement: obj selector]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'10e4c6d0-30b8-1549-afbb-d936fb6c7a9c').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 November 2013 10:51:34 am')})).
(#sourceCode -> '[:obj | obj isVariableBinding
	ifTrue: [''** variables **'']
	ifFalse: [obj isBehavior
		ifTrue: [obj isTrait
			ifTrue: [''** traits **'']
			ifFalse: [''** inheritance **'']]
		ifFalse: [obj methodClass organization categoryOfElement: obj selector]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})