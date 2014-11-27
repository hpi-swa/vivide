process
startProcess

	process ifNotNil: [^ self].
	
	process := [ 
		| delay |
		delay := Delay forSeconds: 30.
		[
			self mutex critical: [
				self processPendingEvents.
				self trySendDocumentsAndAttachments.
				self limitOutgoingRequests].
			delay wait.		
		] repeat ] newProcess.
	
	process name: 'Vivide Logging Service'.
	process priority: UIManager default uiProcess priority.
	process resume.