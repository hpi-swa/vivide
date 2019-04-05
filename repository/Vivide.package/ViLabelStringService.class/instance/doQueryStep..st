vivide - kernel
doQueryStep: aQueryStep

	^ aQueryStep nextLabel ifNil: [
		aQueryStep isPropertyExtraction
			ifTrue: [(aQueryStep valueOfProperty: #headerText)
				ifNil: [self doQueryPart: aQueryStep]
				ifNotNil: [:txt | '\<', txt, '\>']]
			ifFalse: [self doQueryPart: aQueryStep]]