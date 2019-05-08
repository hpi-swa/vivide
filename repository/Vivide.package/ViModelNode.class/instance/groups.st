item model - hierarchy
groups

	^ groups ifNil: [
		updateCount := false. "Discard deferred update requests."
		self
			processStepsGuarded;
			setUpdateNotifications;
			setQueryChangeNotifications.
		"Only one chance for lazy initialization."
		groups ifNil: [groups := #()]]