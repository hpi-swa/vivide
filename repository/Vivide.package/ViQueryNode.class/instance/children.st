private
children

	^ children ifNil: [
		self
			processStepsGuarded;
			setUpdateNotifications;
			setQueryChangeNotifications.
		"Only one chance for lazy initialization."
		children ifNil: [children := Dictionary new]]