definitions
def0793b03d149f1f4cbd83b4baede6bcb3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callUnknown to: value]
		ifFalse: [line key hasCategory: #callUnknown]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'0793b03d-149f-1f4c-bd83-b4baede6bcb3').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:13:30 pm')})).
(#sourceCode -> '[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callUnknown to: value]
		ifFalse: [line key hasCategory: #callUnknown]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})