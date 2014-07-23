as yet unclassified
delete

	self stop.
	self class timers keysAndValuesRemove: [:key :value |
		value == self].