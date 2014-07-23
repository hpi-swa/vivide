notifications
clearAllUpdateNotifications
	"Children only. My notifications get unsubscribed whenever my parent decides to do so."
	
	children ifNil: [^ self].
	
	children valuesDo: [:nodes | nodes do: [:node |		
		node
			clearUpdateNotifications;
			clearAllUpdateNotifications]].