updating
update: anAspect

	anAspect == #contentsSelection ifTrue: [
		self updateContext].
	
	anAspect == #contextStackIndex ifTrue: [
		self updateContext].
	
	anAspect == #contextStackList ifTrue: [
		self ui listView model context: self debugger interruptedContext.
		self ui listView currentRow: 1.
		self objectsChanged: {(self ui listView visibleNodes collect: [:node | node at: #object])}].
	
	anAspect == #relabel ifTrue: [
		self headerText: ('Debugger (pid ', self debugger interruptedProcess name, ')').
		self errorMessage: self debugger labelString].