drawing
drawDropShadowOn: aCanvas

	aCanvas
		translucentImage: self dropShadow
		at: self topLeft - (self shadowWidth @ self shadowWidth) + self shadowOffset