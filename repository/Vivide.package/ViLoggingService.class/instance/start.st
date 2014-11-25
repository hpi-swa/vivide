as yet unclassified
start

	process ifNotNil: [^ self].
	
	process := [ 
		| delay |
		delay := Delay forSeconds: 30.
		[
			| nextEvents nextEvent |
			nextEvents := OrderedCollection new.
			[nextEvent := self pendingEvents nextOrNil]
				whileNotNil: [nextEvents add: nextEvent].  
	
			self mutex critical: [
				self addAllDocuments: nextEvents].  
	
			delay wait.
		
		] repeat ] newProcess.
	
	process name: 'Vivide Logging Service'.
	process priority: UIManager default uiProcess priority.
	process resume.