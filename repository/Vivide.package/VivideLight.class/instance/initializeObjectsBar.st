initialization
initializeObjectsBar

	objectsBar := ViObjectsBar new
		drawBackground: false;
		hResizing: #spaceFill;
		adoptPaneColor: self color;
		yourself.

	objectsBar resizeHandle
		target: self;
		minSize: 150.