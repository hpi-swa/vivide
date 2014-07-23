drawing
drawOverlayOn: aCanvas

	self notificationIcon ifNil: [^ self].

	aCanvas
		translucentImage: self notificationIcon
		at: self bottomRight - self notificationIcon extent.