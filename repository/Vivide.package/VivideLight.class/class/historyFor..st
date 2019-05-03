history
historyFor: concept

	"Only fill the histories if Vivide is running. Better for tests."
	VivideLight active ifNil: [^ ViObjectService new limit: 1; yourself].

	^ self history
		at: concept
		ifAbsentPut: [ViObjectService new limit: 100; yourself]