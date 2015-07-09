running
setUp

	super setUp.
	sut := ViPane new.
	windows := ActiveWorld submorphs select: [:m | m isSystemWindow].