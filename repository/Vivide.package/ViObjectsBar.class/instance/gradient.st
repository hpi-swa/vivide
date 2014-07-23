drawing
gradient

	^ (GradientFillStyle ramp: {
			0.0 -> (self color adjustBrightness: -0.35).
			0.1-> (self color adjustBrightness: -0.15).
			0.3-> (self color adjustBrightness: -0.05).
			0.8 -> (self color)})
		origin: self innerBounds topLeft;
		direction: self innerBounds width @ 0.