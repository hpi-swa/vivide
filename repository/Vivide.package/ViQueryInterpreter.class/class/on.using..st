instance creation
on: aScript using: someObjects

	^ self new
		currentStep: aScript;
		objects: someObjects;
		stack: Stack new