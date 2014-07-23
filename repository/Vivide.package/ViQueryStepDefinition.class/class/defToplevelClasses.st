defaults
defToplevelClasses

	^ (ViQueryOrganizer default definitionById: #toplevelClasses) ifNil: [
		ViQueryMapDefinition new
			id: #toplevelClasses;
			sourceCode: '[:behaviors | behaviors reject: [:b | behaviors includes: b superclass]]';
			inputKind: Behavior;
			outputKind: Behavior;
			mapType: #all;
			register;
			yourself]