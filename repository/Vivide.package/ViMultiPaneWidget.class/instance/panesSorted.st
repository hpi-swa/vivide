accessing
panesSorted

	^ self panes sorted: [:m1 :m2 | m1 topLeft <= m2 topLeft]