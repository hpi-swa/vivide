as yet unclassified
aggregationBlock

	^ aggregationBlock ifNil: [aggregationBlock := [:sum :each | sum + each]]