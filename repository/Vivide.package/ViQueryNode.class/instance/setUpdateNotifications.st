notifications
setUpdateNotifications

	self firstStep ifNotNil: [:step |
		step nextUpdateSetDefinitions do: [:def |
			def block value: self]].