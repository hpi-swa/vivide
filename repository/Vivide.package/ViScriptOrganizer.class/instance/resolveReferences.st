maintenance
resolveReferences
	"Tries to resolve all unresolved references in this organization."
	
	self orderedDefinitions do: [:definition | definition notifier doSilently: [definition resolveReferences]].
	self orderedSteps do: [:step | step notifier doSilently: [step resolveReferences]].
	self orderedCommands do: [:cmd | cmd notifier doSilently: [cmd resolveReferences]].