debugging
debug: aProcess context: aContext label: aString contents: contents fullView: aBool

	| errorWasInUIProcess |
	(VivideLight active isNil or: [(VivideLight useVivideDebugger) not])
		ifTrue: [^ super debug: aProcess context: aContext label: aString contents: contents fullView: aBool].
	
	[Preferences logDebuggerStackToFile
		ifTrue: [Smalltalk logSqueakError: aString inContext: aContext]] on: Error do: [:ex | ex return: nil].
	
	errorWasInUIProcess := Project spawnNewProcessIfThisIsUI: aProcess.
	
	WorldState addDeferredUIMessage: [
		[
			"Free stack from error handling stuff."
			aProcess stepToHome: aContext.
			
			"Let Vivide show the artifact."
"			(ActiveVivide openQueries: {
				#debuggerStack.
				nil.
				#debuggerBindings.
			} withObjects: {aProcess}) height: 500."

			"Or let Vivide show the debugger."
			VivideLight active openDebugger:
				((Debugger new process: aProcess controller: nil context: aContext)
					labelString: aString;
					expandStack;
					errorWasInUIProcess: errorWasInUIProcess;
					yourself).
		] on: Error do: [:ex |
				self primitiveError: 'Original error: ', 	aString asString, '.
	Debugger error: ', ([ex description] on: Error do: ['a ', ex class printString]), ':'
			]
		].
	
	aProcess suspend.