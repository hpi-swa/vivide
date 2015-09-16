accessing
panesSorted

	^ self panes sortBy: [:m1 :m2 | m1 topLeft <= m2 topLeft]