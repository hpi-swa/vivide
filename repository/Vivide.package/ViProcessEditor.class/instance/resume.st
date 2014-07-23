actions
resume

	self object isTerminated ifTrue: [
		^ self
			warn: 'Cannot resume. Process is terminated.'
			for: self].
	self object isSuspended ifFalse: [
		^ self
			inform: 'Process is already running.'
			for: self].
	Processor activeProcess == self object ifTrue: [
		^ self
			inform: 'Process is already active UI process.'
			for: self].

	WorldState addDeferredUIMessage: [self objectChanged].

	self isUiProcess
		ifTrue: [
			Project resumeProcess: self object.
			Processor terminateActive "old ui process"]
		ifFalse: [self object resume].