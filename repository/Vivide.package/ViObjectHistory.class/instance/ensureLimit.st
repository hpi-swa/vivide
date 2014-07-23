private
ensureLimit

	[self size > self limit]
		"New objects will be appended. So remove the oldest one, which is the first."
		whileTrue: [self removeObject: self objects first].