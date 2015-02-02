initialization
initializeObjectsBar

	objectsBar := ViObjectsBar new
		drawBackground: false;
		hResizing: #spaceFill.

	objectsBar resizeHandle
		target: self;
		minSize: 200.