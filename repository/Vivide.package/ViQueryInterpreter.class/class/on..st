instance creation
on: aQueryStep

	^ self new
		currentStep: aQueryStep;
		objects: (Dictionary new at: #all put: #(); yourself);
		groups: #(all);
		stack: Stack new