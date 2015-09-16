accessing - pane api
currentQuery: aQueryStep

	self model ifNotNil: [:m | m firstStep next: aQueryStep].