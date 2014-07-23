notifications
clearUpdateNotifications

	self firstStep ifNotNil: [:step |
		step nextUpdateClearDefinitions do: [:def |
			def block value: self]].
	
	"Ensure to skip next update."
	updateCount := false.