accessing
morphsOfInterest

	^ (self artifactContainers select: [:me | me hasAnyKeyboard])