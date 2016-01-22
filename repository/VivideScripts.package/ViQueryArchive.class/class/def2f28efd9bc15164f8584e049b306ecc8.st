definitions
def2f28efd9bc15164f8584e049b306ecc8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:refs | refs gather: [:ref | ViMethodVersion versionsOfMethod: ref]]).
(#class -> ViQueryMapDefinition).
(#id -> #'2f28efd9-bc15-164f-8584-e049b306ecc8').
(#inputKind -> MethodReference).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:refs | refs gather: [:ref | ViMethodVersion versionsOfMethod: ref]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})