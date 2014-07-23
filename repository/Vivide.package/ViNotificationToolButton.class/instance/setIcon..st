accessing
setIcon: aForm

	notificationIcon := aForm ifNotNil: [:f | f clippedTo: 10@10].
	self redrawLater.