navigation
lookupGlobalScripts

	self flag: #todo. "mt: Consider other organizations?"
	^ ViScriptOrganizer active ifNil: [#()] ifNotNil: #globalQueries