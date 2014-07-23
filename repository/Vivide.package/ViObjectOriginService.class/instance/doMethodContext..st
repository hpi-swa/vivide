operations - context
doMethodContext: aMethodContext

	| receiverClass clientClass |
	clientClass := aMethodContext methodClass.
	receiverClass := aMethodContext receiver class.
	
	^ clientClass == receiverClass
		ifFalse: [receiverClass theNonMetaClass name, ' (', clientClass theNonMetaClass name, ')']
		ifTrue: [receiverClass theNonMetaClass name]