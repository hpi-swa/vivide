as yet unclassified
doQueryStep: aQueryStep

	^ aQueryStep nextLabel ifNil: [
		aQueryStep isPropertyStep
			ifTrue: [(aQueryStep valueOfProperty: #headerText)
				ifNil: [self doQueryPart: aQueryStep]
				ifNotNil: [:txt | '\<', txt, '\>']]
			ifFalse: [self doQueryPart: aQueryStep]]