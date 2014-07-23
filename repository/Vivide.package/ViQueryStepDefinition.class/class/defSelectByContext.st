defaults
defSelectByContext

	^ (ViQueryOrganizer default definitionById: #selectByContext) ifNil: [
		ViQueryMapDefinition new
			id: #selectByContext;
			sourceCode: '[:objects :context | objects select: [:obj | context contents includes: obj]]';
			mapType: #all;
			register;
			yourself]