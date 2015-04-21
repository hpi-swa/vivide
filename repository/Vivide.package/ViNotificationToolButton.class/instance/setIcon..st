accessing
setIcon: aForm

	notificationIcon := aForm ifNotNil: [:f | f clippedToSize: 10@10].
	self redrawLater.