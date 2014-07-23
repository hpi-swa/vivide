as yet unclassified
lastExceptions

	^ LastExceptions ifNil: [LastExceptions := ViExceptionHistory new limit: 10]