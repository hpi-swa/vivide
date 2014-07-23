accessing - properties
objects: someObjects

	self flag: #tooStrong. "mt: Use weak references? But MethodRefernces will be collected right away..."
	self properties at: #objects put: someObjects.