definitions
def7625f31d1d008f41ae4ed329332e8545
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callHelper to: value]
		ifFalse: [line key hasCategory: #callHelper]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'7625f31d-1d00-8f41-ae4e-d329332e8545').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:08:57 am')})).
(#sourceCode -> '[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callHelper to: value]
		ifFalse: [line key hasCategory: #callHelper]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})