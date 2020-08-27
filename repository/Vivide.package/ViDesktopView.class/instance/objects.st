accessing
objects
	"Extract this view model's objects from each pane's input connection. Unwrap single objects in lists. See #objects:for: and also ViModelNode >> #inputForChildren."

	^ self panes collect: [:pane | 
		pane validInputConnections
			detect: [:c | c source hasProperty: #paneViewInput]
			ifFound: [:c | c objects unwrapList]
			ifNone: [self error: 'Invalid pane']]