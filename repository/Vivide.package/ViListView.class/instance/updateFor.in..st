initialization
updateFor: script in: env

	super updateFor: script in: env.	
	self updateForListForQuery: script.   