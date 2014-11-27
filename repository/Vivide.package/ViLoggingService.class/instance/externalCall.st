as yet unclassified
externalCall

	| ctxt |
	Processor activeProcess == activityMonitor
		ifTrue: [^ nil].
	
	ctxt := thisContext.
	[ctxt method methodClass theNonMetaClass == self class]
		whileTrue: [ctxt := ctxt sender].
	^ ctxt