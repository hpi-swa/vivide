actions
terminate

"	Processor activeProcess == self object ifTrue: [
		^ UiMessage
			warning: 'Cannot terminate active UI process.'
			for: self].
"	self object isTerminated ifTrue: [
		^ self
			inform: 'Process is already terminated.'
			for: self].
		
	WorldState addDeferredUIMessage: [self objectChanged].
	Project spawnNewProcessIfThisIsUI: self object.
	self object terminate.