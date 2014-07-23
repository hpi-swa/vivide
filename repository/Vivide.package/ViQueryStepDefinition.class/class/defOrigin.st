defaults
defOrigin

	^ (ViQueryOrganizer default definitionById: #origin) ifNil: [
		ViQueryMapDefinition new
			id: #origin;
			sourceCode: '[:obj | ViObjectOriginService doObject: obj]';
			mapType: #each;
			register;
			yourself]