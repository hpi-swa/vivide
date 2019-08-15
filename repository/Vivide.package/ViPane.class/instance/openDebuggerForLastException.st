errors
openDebuggerForLastException

	| d process errorWasInUIProcess description debugger |
	d := self errorBtn.
	process := d valueOfProperty: #suspendedProcess.
	errorWasInUIProcess := d valueOfProperty: #errorWasInUIProcess ifAbsent: [false].
	description := d valueOfProperty: #description ifAbsent: ['Script evaluation failed']. 
	
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
			d removeProperty: #suspendedProcess. "debugger window will terminate process."
			^ debugger openFullNoSuspendLabel: description].

	"Vivide's debugger."
	VivideLight active openDebugger: debugger.