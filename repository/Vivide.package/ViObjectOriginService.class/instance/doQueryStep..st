as yet unclassified
doQueryStep: aQueryStep

	^ aQueryStep isGlobal
		ifTrue: ['-']
		ifFalse: [aQueryStep baseClassName]