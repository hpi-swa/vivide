initialization
initializeResizeHandle

	| editVisibilityBtn handle |
	editVisibilityBtn := UiToolButton new
		buttonStyle: #iconOnly;
		icon: UiButtonIcons bulletArrowUpSunkenIcon;
		color: (Color gray: 0.85);
		balloonText: 'Toggle code panel.';
		layoutInset: (5@0 corner: 3@ -1).

	handle := ViResizeHandle new
		orientation: #horizontal.
		
	resizeHandle := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: 10.        

	resizeHandle
		addAllMorphs: {handle.editVisibilityBtn}.
		
	self connect: self signal: #artifactChanged: to: handle selector: #target:.
	self connect: editVisibilityBtn signal: #clicked: toSelector: #toggleEditVisible.