accessing - ui
ui
	
	^ ui ifNil: [ui := self uiClass new] 