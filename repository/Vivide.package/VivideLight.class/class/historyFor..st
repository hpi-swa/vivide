history
historyFor: concept

	"Only fill the histories if Vivide is running. Better for tests."
	VivideLight active ifNil: [^ ViObjectHistory new limit: 1; yourself].

	^ self history
		at: concept
		ifAbsentPut: [ViObjectHistory new limit: 100; yourself]