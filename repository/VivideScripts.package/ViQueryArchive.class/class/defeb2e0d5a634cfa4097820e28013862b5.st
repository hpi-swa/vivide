definitions
defeb2e0d5a634cfa4097820e28013862b5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | 
	obj isVariableBinding ifTrue: ['(Bindings)'] ifFalse: [
		(PackageOrganizer default packageOfSystemCategory: obj class category ifNone: []) name]]).
(#class -> ViQueryMapDefinition).
(#id -> #'eb2e0d5a-634c-fa40-9782-0e28013862b5').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 4:40:32 pm')})).
(#sourceCode -> '[:obj | 
	obj isVariableBinding ifTrue: [''(Bindings)''] ifFalse: [
		(PackageOrganizer default packageOfSystemCategory: obj class category ifNone: []) name]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})