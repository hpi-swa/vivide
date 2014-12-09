as yet unclassified
fullScript
	"Like fullBounds layouting mechanism, we need to compute our meta scripts for multiple panes."

	fullScript ifNotNil: [:script | ^ script].
	fullScript := self updateScript.
	^ fullScript