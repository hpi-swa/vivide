initialization
initializeResizeHandle

	resizeHandle := ViResizeHandle new
		color: (Color fromString: '#C6CBD6');
		orientation: #vertical;
		target: self.