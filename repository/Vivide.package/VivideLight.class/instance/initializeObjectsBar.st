initialization
initializeObjectsBar

	objectsBar := ViObjectsBar new
		drawBackground: false;
		hResizing: #rigid;
		adoptPaneColor: self color;
		yourself.