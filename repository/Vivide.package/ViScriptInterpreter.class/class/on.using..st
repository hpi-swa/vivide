instance creation
on: firstStep using: someObjects

	^ self new
		first: firstStep;
		objects: someObjects;
		bindings: Dictionary new;

		stack: (Stack new push: firstStep activate; yourself);
		activateNext; 		"next: nil;"
		
		yourself