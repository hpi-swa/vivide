as yet unclassified
createResult

	self task result: ViExperimentResult new.
	self task result
		timespan: (Timespan starting: startTime ending: DateAndTime now).