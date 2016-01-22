definitions
def8d718606a86d30408705106076cda276
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:assoc | assoc value asArray sorted: [:t1 :t2 |
	t1 class == t2 class
		ifTrue: [t1 selector <= t2 selector]
		ifFalse: [t1 class name <= t2 class name]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'8d718606-a86d-3040-8705-106076cda276').
(#inputKind -> Association).
(#mapType -> #each).
(#outputKind -> TestCase).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 1:34:36 pm')})).
(#sourceCode -> '[:assoc | assoc value asArray sorted: [:t1 :t2 |
	t1 class == t2 class
		ifTrue: [t1 selector <= t2 selector]
		ifFalse: [t1 class name <= t2 class name]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})