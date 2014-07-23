accessing
currentPageIndex: anInteger
	"For memento pattern only; i.e., initialization purposes. Use #selectListPage: or #selectQueryPage: instead."

	self ui stack animated: false.
	(self ui pageButtonGroup button: anInteger)
		checked: true.
	self ui stack animated: true.