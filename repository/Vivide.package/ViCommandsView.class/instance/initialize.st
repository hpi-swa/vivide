initialization
initialize

	super initialize.
	self connect: self signal: #activated: toSelector: #executeCommand:.
	
	addBtn
		visible: true;
		icon: (UiFugueIcons control270SmallIcon asWireframeSunken: 0.4).