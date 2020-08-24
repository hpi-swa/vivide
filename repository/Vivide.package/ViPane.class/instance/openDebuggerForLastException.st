errors
openDebuggerForLastException

	| d process errorWasInUIProcess description |
	d := self decoration message.
	process := d valueOfProperty: #suspendedProcess.
	errorWasInUIProcess := d valueOfProperty: #errorWasInUIProcess ifAbsent: [false].
	description := d valueOfProperty: #description ifAbsent: ['Script evaluation failed']. 
	
	process ifNil: [^ self].
	
	"Squeak's debugger."
	(VivideLight active isNil or: [(VivideLight useVivideDebugger) not])
		ifTrue: [
			d removeProperty: #suspendedProcess. "debugger window will terminate process."
			^ process debug].

	"Vivide's debugger."
	VivideLight active openArtifact: process.