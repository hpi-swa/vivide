custom icons
arrowUpDownIcon

	^ self icons
		at: #arrowUpDown
		ifAbsentPut: [
			| form canvas |
			form := Form extent: 16@16 depth: 32.
			canvas := form getCanvas.
			
			canvas
				translucentImage: UiFugueIcons control270SmallIcon
				at: 0 @ 3;
				translucentImage: UiFugueIcons control090SmallIcon
				at: 0 @ -3.
				
			form]