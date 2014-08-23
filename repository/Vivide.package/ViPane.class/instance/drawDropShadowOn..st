drawing
drawDropShadowOn: aCanvas

	aCanvas
		translucentImage: self dropShadow
		at: self topLeft - (8@8) + (0@1)