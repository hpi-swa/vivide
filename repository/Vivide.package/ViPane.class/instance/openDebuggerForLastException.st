as yet unclassified
openDebuggerForLastException

	| process errorWasInUIProcess description debugger |
	process := self errorBtn valueOfProperty: #suspendedProcess.
	errorWasInUIProcess := self errorBtn valueOfProperty: #errorWasInUIProcess ifAbsent: [false].
	description := self errorBtn valueOfProperty: #description ifAbsent: ['Script evaluation failed']. 
	
	process ifNil: [^ self].
	
	debugger := Debugger new process: process controller: nil context: process suspendedContext.
	debugger
		labelString: description asString;
		expandStack;
		errorWasInUIProcess: errorWasInUIProcess;
		checkContextSelection.
	
	"Squeak's debugger."
	(VivideLight active isNil or: [(VivideLight useVivideDebugger) not])
		ifTrue: [
			self errorBtn removeProperty: #suspendedProcess. "debugger window will terminate process."
			^ debugger openFullNoSuspendLabel: description].

	"Vivide's debugger."
	VivideLight active openDebugger: debugger.