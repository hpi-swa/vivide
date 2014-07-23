as yet unclassified
enabledFor: aNode

	^ (self data: enabledSelector for: aNode) ifNil: [true]