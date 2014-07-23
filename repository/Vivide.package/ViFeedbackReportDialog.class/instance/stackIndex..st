actions
stackIndex: anIndex
	"Show the stack report at the given index."
	
	self ui stackEdit theText: ((self debuggers at: anIndex) at: #stack).