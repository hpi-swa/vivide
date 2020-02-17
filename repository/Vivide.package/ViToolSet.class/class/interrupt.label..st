as yet unclassified
interrupt: aProcess label: aString

	| errorWasInUIProcess |
	(VivideLight active isNil or: [(VivideLight useVivideDebugger) not])
		ifTrue: [^ super interrupt: aProcess label: aString].
		
	Preferences logDebuggerStackToFile
		ifTrue: [(aString includesSubstring: 'Space') & (aString includesSubstring: 'low')
			ifTrue: [Smalltalk logError: aString inContext: aProcess suspendedContext to: 'LowSpaceDebug.log']].
	
	errorWasInUIProcess := Project current spawnNewProcessIfThisIsUI: aProcess.

	WorldState addDeferredUIMessage: [
		[
			VivideLight active openDebugger:
				((Debugger new process: aProcess controller: nil context: aProcess suspendedContext)
					labelString: aString;
					expandStack;
					errorWasInUIProcess: errorWasInUIProcess;
					yourself).
		] on: Error do: [:ex |
			self primitiveError: 'Original error: ',
				aString asString, '.
	Debugger error: ', ([ex description] on: Error do: ['a ', ex class printString]), ':'
			]
		].