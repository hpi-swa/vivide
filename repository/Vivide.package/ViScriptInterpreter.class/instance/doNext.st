interpreting
doNext
	"Interpret the next script step using objects as input."
	
	self next ifNil: [self assert: self stack isEmpty. ^ self].
	
	(self next isExecutedAsynchronously and: [Project uiProcess == Processor activeProcess]) ifTrue: [
		ViAsyncError signal: 'This step must not be executed in the UI process.'].
	
	self bind: #thisScript to: self first.
	self bind: #thisStep to: self next.
	
	self withBindingsDo: [
		self
			interpretScript;
			activateNext].