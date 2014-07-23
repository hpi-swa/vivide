tests
test17AddArtifact

	| newStep newEditor yetAnotherStep yetAnotherEditor |
	step register.
	self setUpWindow.
	
	"If your are no property step, just create a transform step."
	editor addArtifact.
	newEditor := window artifactContainers last.
	newStep := newEditor object.
	self
		assert: step ~~ newStep;
		assert: newStep isTransformStep;
		assert: newStep isRegistered.
		
	"If you are a property step, create a new property step."
	newEditor currentType: (newEditor typeMappings detect: [:spec | spec notNil and: [spec key == ViQueryPropertyStep]]).
	newEditor acceptType.
	self assert: newStep isPropertyStep.
	
	newEditor addArtifact.
	yetAnotherEditor := window artifactContainers last.
	yetAnotherStep := yetAnotherEditor object.
	self
		assert: newStep ~~ yetAnotherStep;
		assert: yetAnotherStep isPropertyStep;
		assert: yetAnotherStep isRegistered.