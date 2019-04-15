instance creation
on: aScriptStep using: someObjects

	^ self new
		next: aScriptStep;
		objects: someObjects;
		stack: Stack new