as yet unclassified
panesSorted

	^ self submorphs sortBy: [:m1 :m2 | m1 topLeft <= m2 topLeft]