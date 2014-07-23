converting
asString

	^ '{1} >> {2}' format: {
		self theClass name.
		self selector}