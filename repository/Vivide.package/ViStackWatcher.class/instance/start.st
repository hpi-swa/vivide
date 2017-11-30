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

	process name: (process hash asString first: 5),  ': the stack watcher'.