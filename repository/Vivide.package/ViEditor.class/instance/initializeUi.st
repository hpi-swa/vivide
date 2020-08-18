initialization
initializeUi

	self ui setupUi: self.
	self
		color: (Color gray: 0.85);
		vResizing: #spaceFill;
		initializeHeader;
		width: self defaultWidth.