*VivideDynamicAnalysis
doMethodCallNode: aMethodCallNode

	^ aMethodCallNode clientClass == aMethodCallNode receiverClass
		ifTrue: [aMethodCallNode clientClass theNonMetaClass name]
		ifFalse: [aMethodCallNode receiverClass name, ' (', aMethodCallNode clientClass name, ')']