accessing - kernel
objects: someObjects
	"Updates model input."

	(VivideLight animateDataflow and: [self isInWorld]) ifTrue: [
		self showFlash.
		(Delay forMilliseconds: 200) wait].

	self model inputForChildren: someObjects.
	self objectsChanged: self objects.
	
	self assureAppropriateScript."Update model and view."
	
	self flag: #experimental.
	(self objects isEmpty and: [self script isGlobal not])
		ifTrue: [self showNoInput]
		ifFalse: [self decoration message hide].