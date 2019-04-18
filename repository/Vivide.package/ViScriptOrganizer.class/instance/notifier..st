accessing
notifier: aNotifier
	"For testing purposes only! Production queries should use default notifier! See #notifier."
	
	aNotifier == self notifier ifTrue: [^ self].
	notifier := aNotifier.