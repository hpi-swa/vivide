support - debugging
interpretUpToSelf

	self flag: #suspicious. "mt: What do we know about script interpretation at this point? Should this check be moved to the interpreter?"
	self flag: #tofix. "mt: Once we got rid of reference steps and work with #next only, this can become clearer."
	
	^ self interpretUpToDetect: [:step :input :interpreter | 
		step = self thisStep]  