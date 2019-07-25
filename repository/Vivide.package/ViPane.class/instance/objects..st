accessing - kernel
objects: someObjects
	"Updates model input."

	(VivideLight animateDataflow and: [self isInWorld]) ifTrue: [
		self showFlash.
		(Delay forMilliseconds: 200) wait].

	self model inputForChildren: someObjects.
	self objectsChanged: self objects.
	
	self assureAppropriateScript.