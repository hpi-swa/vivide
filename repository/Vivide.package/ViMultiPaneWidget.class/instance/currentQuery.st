accessing - pane api
currentQuery

	^ self model ifNotNil: [:m | m firstStep next]