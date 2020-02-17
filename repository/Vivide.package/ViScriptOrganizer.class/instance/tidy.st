maintenance
tidy

	Transcript cr; show: '[Vivide] Tidying query database...'.

	self registerAllReachableStepsAndDefinitions.
	Transcript cr; show: '[Vivide] ...finished registering all reachable steps and definitions...'.
	self synchronizeCaches.
	Transcript cr; show: '[Vivide] ...finished synchronizing caches...'.
"	self mergeDefinitions.
	Transcript cr; show: '[Vivide] ...finished merging duplicate definitions...'."

	self deleteInvisibleSteps.
	Transcript cr; show: '[Vivide] ...finished unregistering unreachable steps...'.
	self unregisterUnusedDefinitions.
	Transcript cr; show: '[Vivide] ...finished unregistering unused definitions...'.

	Transcript cr; show: '[Vivide] ...finished tidying query database.'.