initialization
clear

	model := nil.
	
	self flag: #performance. "mt: We should also disconnect all the signals as set to trigger #reset. *sigh*"
	self content removeAllMorphs.