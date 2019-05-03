navigation - kernel
requiredScriptIds
	"Returns a list of all script ids that should represent valid scripts for default programming purposes."

	^ self hardcodedScriptIds copyWithoutAll: #(debugger)