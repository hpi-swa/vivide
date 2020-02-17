squeak - kernel
doContext: aContext

	| receiverClass clientClass |
	clientClass := aContext methodClass.
	receiverClass := aContext receiver class.
	
	^ clientClass == receiverClass
		ifFalse: [receiverClass theNonMetaClass name, ' (', clientClass theNonMetaClass name, ')']
		ifTrue: [receiverClass theNonMetaClass name]