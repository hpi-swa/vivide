instance creation
on: aScriptStep

	^ self new
		currentStep: aScriptStep;
		objects: #();
		stack: Stack new