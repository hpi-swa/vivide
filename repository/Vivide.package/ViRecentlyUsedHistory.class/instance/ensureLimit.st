private
ensureLimit

	[self size > self limit]
		"New objects will be precended. So remove the oldest one, which is the last."
		whileTrue: [self removeObject: self objects last].