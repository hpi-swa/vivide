actions
suspend

	self object isTerminated ifTrue: [
		^ self
			warn: 'Cannot suspend. Process is terminated.'
			for: self].
	(Processor activeProcess ~~ self object and: [self object isSuspended]) ifTrue: [
		^ self
			inform: 'Process is already suspended.'
			for: self].
	
	WorldState addDeferredUIMessage: [self objectChanged].
	Project spawnNewProcessIfThisIsUI: self object.
	self object suspend.