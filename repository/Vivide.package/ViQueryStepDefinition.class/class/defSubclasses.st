defaults
defSubclasses

	^ (ViQueryOrganizer default definitionById: #subclasses) ifNil: [
		ViQueryMapDefinition new
			id: #subclasses;
			sourceCode: '[:behavior | behavior subclasses]';
			inputKind: Behavior;
			outputKind: Behavior;
			mapType: #each;
			register;
			yourself]