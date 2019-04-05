public
merge
	
	self assert: archive notNil.
	
	"Support merging from archive into specific organization."
	organizer ifNil: [self mergeProfile].
	
	self
		mergeDefinitions;
		mergeSteps;
		mergeCommands;
		resolveReferences.

	^ profile