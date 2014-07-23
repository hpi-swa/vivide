as yet unclassified
currentQuery

	^ ViQueryStep combine: (self children collect: [:child | child currentQuery])