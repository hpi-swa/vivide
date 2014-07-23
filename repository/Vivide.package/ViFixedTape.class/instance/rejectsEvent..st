events-processing
rejectsEvent: evt

	^ self visible not or: [super rejectsEvent: evt]