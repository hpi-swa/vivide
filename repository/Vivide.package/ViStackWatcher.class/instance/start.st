as yet unclassified
start

	self stop.
		
	process := [
		| delay |
		delay := Delay forMilliseconds: 50.
		[
			self checkForEndlessRecursion.
			delay wait.
		] repeat.
	] forkAt: Processor highIOPriority.