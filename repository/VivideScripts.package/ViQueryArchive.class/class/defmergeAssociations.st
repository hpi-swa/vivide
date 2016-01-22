definitions
defmergeAssociations
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:assocs | |d|
	d := Dictionary new.
	assocs do: [:assoc | (d
		at: assoc key ifAbsentPut: [OrderedCollection new])
		add: assoc value].
	{d}]).
(#class -> ViQueryMapDefinition).
(#id -> #mergeAssociations).
(#inputKind -> Association).
(#mapType -> #all).
(#outputKind -> Dictionary).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:assocs | |d|
	d := Dictionary new.
	assocs do: [:assoc | (d
		at: assoc key ifAbsentPut: [OrderedCollection new])
		add: assoc value].
	{d}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})