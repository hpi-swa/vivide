running
tearDown

	sut clear.
	
	((ActiveWorld submorphs select: [:m | m isSystemWindow])
		copyWithoutAll: windows)
			do: [:newWindows | newWindows delete].
	
	super tearDown.