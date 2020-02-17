accessing
firstStep: scriptStep

	firstStep == scriptStep ifTrue: [^ self].

	"Reset all nodes and notifier subscriptions silently to avoid unnecessary view updates."
	self resetSilently.
	
	firstStep := scriptStep.