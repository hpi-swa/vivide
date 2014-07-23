as yet unclassified
every: milliseconds send: aSelector to: aReceiver withArguments: someArguments

	self stop.
	
	receiver := WeakArray with: aReceiver.
	arguments := WeakArray withAll: someArguments.
	selector := aSelector.

	self
		interval: milliseconds;
		setSingleShot: false;
		start.