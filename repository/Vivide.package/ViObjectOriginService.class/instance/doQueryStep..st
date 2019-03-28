vivide - kernel
doQueryStep: aQueryStep

	^ aQueryStep isGlobal
		ifTrue: ['-']
		ifFalse: [aQueryStep baseClassName]