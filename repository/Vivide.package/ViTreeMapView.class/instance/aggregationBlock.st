accessing
aggregationBlock

	^ aggregationBlock ifNil: [aggregationBlock := [:sum :each | sum + each]]