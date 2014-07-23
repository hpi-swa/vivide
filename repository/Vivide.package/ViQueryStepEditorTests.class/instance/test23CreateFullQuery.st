as yet unclassified
test23CreateFullQuery

	"The initial code may just be there by default. Do not pollute the database."
	self
		deny: step isRegistered;
		deny: step definition isRegistered.
	
	"We want each object separately."
	editor registerQuery.
	editor currentType: (editor typeMappings detect: [:spec | spec notNil and: [spec key == ViQueryTransformStep and: [spec value first == #each]]]).
	editor currentSourceCode: '[:package | package classesAndMetaClassses]'.
	editor acceptSourceCode.
	
	self setUpWindow.
	editor addArtifact.
	
	self flag: #todo.