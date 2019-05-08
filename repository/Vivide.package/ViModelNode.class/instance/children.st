private
children

	^ children ifNil: [
		updateCount := false. "Discard deferred update requests."
		self
			processStepsGuarded;
			setUpdateNotifications;
			setQueryChangeNotifications.
		"Only one chance for lazy initialization."
		children ifNil: [
			children := Dictionary new.
			children at: self defaultGroup put: {}]]