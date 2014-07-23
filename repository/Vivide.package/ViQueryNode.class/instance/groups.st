item model - hierarchy
groups

	^ groups ifNil: [
		self
			processStepsGuarded;
			setUpdateNotifications;
			setQueryChangeNotifications.
		"Only one chance for lazy initialization."
		groups ifNil: [groups := #()]]