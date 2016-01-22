definitions
def2402473a838e5b4895fefe6648dcc28a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | obj isVariableBinding ifFalse: [#()] ifTrue: [
	{#icon -> UiFugueIcons tagSmallIcon. #balloonText -> 'Binding'}]]).
(#class -> ViQueryMapDefinition).
(#id -> #'2402473a-838e-5b48-95fe-fe6648dcc28a').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 4:22:27 pm')})).
(#sourceCode -> '[:obj | obj isVariableBinding ifFalse: [#()] ifTrue: [
	{#icon -> UiFugueIcons tagSmallIcon. #balloonText -> ''Binding''}]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})