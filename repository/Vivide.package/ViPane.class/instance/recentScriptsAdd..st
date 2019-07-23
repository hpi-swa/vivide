actions
recentScriptsAdd: script

	script ifNil: [^ self].
	
	(self recentScripts includes: script)
		ifFalse: [self recentScripts addLast: script].