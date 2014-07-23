actions
toggleEditVisible

	self editVisible: self editVisible not.
	
	resizeHandle submorphs last icon:
		(self editVisible
			ifTrue: [UiButtonIcons bulletArrowDownSunkenIcon]
			ifFalse: [UiButtonIcons bulletArrowUpSunkenIcon])