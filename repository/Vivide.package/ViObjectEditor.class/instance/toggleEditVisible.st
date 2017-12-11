actions
toggleEditVisible

	self editVisible: self editVisible not.
	self resizeHandle ifNil: [^ self].
	
	self resizeHandle submorphs last icon:
		(self editVisible
			ifTrue: [UiButtonIcons bulletArrowDownSunkenIcon]
			ifFalse: [UiButtonIcons bulletArrowUpSunkenIcon])