defaults
defMergeAssociations

	^ (ViQueryOrganizer default definitionById: #mergeAssociations) ifNil: [
		ViQueryMapDefinition new
			id: #mergeAssociations;
			sourceCode: '[:assocs | |d|
	d := Dictionary new.
	assocs do: [:assoc | (d
		at: assoc key ifAbsentPut: [OrderedCollection new])
		add: assoc value].
	{d}]';
			mapType: #all;
			inputKind: Association;
			outputKind: Dictionary;
			register;
			yourself]