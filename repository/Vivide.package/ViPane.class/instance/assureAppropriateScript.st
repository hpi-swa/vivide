script selection
assureAppropriateScript
	"Changes the script if the current one cannot support the new (kind of) objects anymore."
	
	| appropriateScripts |
	(self objects isEmpty and: [self script notNil])
		ifTrue: [^ self "No change"].

	appropriateScripts := self appropriateScripts.
	
	"0) Create a new identity script if there is no alternative."
	appropriateScripts
		ifEmpty: [^ self assureIdentityScript].
	
	"1) If the current scripts is still fine, force updating the results now."
	(appropriateScripts includes: self script)
		ifTrue: [^ self updateResults]. 
	
	"2) Choose any of the recent scripts if they still fit."
	self recentScripts do: [:recentScript |
		(appropriateScripts includes: recentScript)
			ifTrue: [^ self script: recentScript]].
	
	"3) Set the first next best script."
	self script: appropriateScripts first.