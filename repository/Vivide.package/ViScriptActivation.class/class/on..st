instance creation
on: aStep

	^ self new
		thisStep: aStep;
		nextSteps: (aStep before, aStep asList, aStep after) readStream;
		yourself