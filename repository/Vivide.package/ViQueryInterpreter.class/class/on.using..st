instance creation
on: aScriptStep using: someObjects

	^ self new
		first: aScriptStep;
		next: aScriptStep;
		objects: someObjects;
		stack: Stack new;
		bindings: Dictionary new;
		yourself