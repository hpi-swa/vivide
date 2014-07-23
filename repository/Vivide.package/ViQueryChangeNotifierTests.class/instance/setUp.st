running
setUp

	super setUp.
	
	sut := ViQueryChangeNotifier new.
	organization := ViQueryOrganizer new notifier: sut.
	step := ViQueryTransformStep new
		organization: organization.
	definition := ViQueryMapDefinition new
		organization: organization;
		sourceCode: '[:cls | cls theNonMetaClass methods]';
		mapType: #each.
	step definition: definition.