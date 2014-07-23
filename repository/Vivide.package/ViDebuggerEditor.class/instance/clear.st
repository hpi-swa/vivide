memento - cleanup
clear

	super clear.
	self debugger ifNotNil: [:dbg | dbg release].