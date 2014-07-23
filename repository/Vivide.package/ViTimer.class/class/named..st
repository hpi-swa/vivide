as yet unclassified
named: name

	^ (self timers at: name ifAbsentPut: [self new])