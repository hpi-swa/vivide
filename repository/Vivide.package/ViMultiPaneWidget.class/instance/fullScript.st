as yet unclassified
fullScript
	"Like fullBounds layouting mechanism, we need to compute our meta scripts for multiple panes."

	fullScript ifNotNil: [:script | ^ script].
	
	self panes do: [:pane | pane fullScript].
	
	fullScript := self updateScript.
	^ fullScript