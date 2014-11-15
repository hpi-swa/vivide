notifications
clearAllQueryChangeNotifications

	children ifNil: [^ self].
	children valuesDo: [:nodes | nodes do: [:node |
		node
			clearQueryChangeNotifications;
			clearAllQueryChangeNotifications]].