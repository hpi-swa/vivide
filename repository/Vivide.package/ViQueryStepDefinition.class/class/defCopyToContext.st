defaults
defCopyToContext

	^ (ViQueryOrganizer default definitionById: #copyToContext) ifNil: [
		ViQueryMapDefinition new
			id: #copyToContext;
			sourceCode: '[:objects :context | context contents: objects. objects]';
			mapType: #all;
			register;
			yourself]