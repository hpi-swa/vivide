geometry
optimalHeight
	"See #optimalWidth."
	
	| delta |
	delta := 0.
	self flag: #hacky. "mt: Compute rows and then..."
	self panes do: [:pane |
		delta := delta max: pane optimalHeight - pane fullBounds height].
	^ self fullBounds height + (delta" * self panes size sqrt ceiling")