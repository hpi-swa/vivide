as yet unclassified
unwrapPaneFromMultiPaneWidget

	| panes |
	panes := self pane view panes.
	panes size = 1 ifFalse: [^ false].
	
	"Update connections."
	panes first connections copy do: [:c | c detach].
	self pane connections copy
		do: [:c |
			c detach.
			c source = self pane ifTrue: [c source: panes first].
			c target = self pane ifTrue: [c target: panes first].
			c attachSilently].

	"Delete meta script."
	self pane script ifNotNil: [:script |
		self assert: script isMeta.
		script unregister].	
	
	self setProperty: #isSpawning toValue: true.
	self pane: panes first.
	self removeProperty: #isSpawning.

	^ true