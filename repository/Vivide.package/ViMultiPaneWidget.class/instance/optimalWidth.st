geometry
optimalWidth
	"This is just a rough and hopefully fast-enough implementation. See this widget's constraint layout policy to make more sense out of it. Hint: On a resize, submorphs are just scaled proportionally."

	| delta |
	delta := 0.
	self flag: #hacky. "mt: Compute columns and then..."
	self panes do: [:pane |
		delta := delta max: pane optimalWidth - pane fullBounds width].
	^ self fullBounds width + (delta * self panes size sqrt ceiling * 2)