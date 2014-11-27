as yet unclassified
currentQuery: aQueryStep

	self model ifNotNil: [:m | m firstStep next: aQueryStep].