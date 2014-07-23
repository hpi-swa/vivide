drawing
drawOn: aCanvas

	self form value ifNotNil: [:f |
		aCanvas translucentImage: f at: self innerBounds origin].