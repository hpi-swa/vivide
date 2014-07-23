as yet unclassified
currentQuery: aQuery

	(ViQueryStep expand: aQuery) with: self children do: [:query :child |
		child currentQuery: query].