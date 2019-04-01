maintenance
convertOldStyleScripts

	| oldStyleScripts convertedScripts errors newOrganization |	
	oldStyleScripts := (self orderedSteps 
		select: [:ea | ea isScript not])
		select: [:ea | ea nextLabel notNil or: [ea isSpecial]].
	oldStyleScripts := (oldStyleScripts gather: [:ea | ea allSteps "follow refs"]) asSet
		select: [:ea | ea isScript not and: [ea isGroupSortStep not]].

	"Sort for better debugging."
"	oldStyleScripts := oldStyleScripts sorted: [:a :b |	
		a nextLabel <= b nextLabel or: [
			a nextLabel = b nextLabel and: [a steps size > b steps size]]].
"	

	"Safety checks."
	oldStyleScripts do: [:step | step stepsDo: [:innerStep |
		self assert: innerStep hasCycle not.
	]].

	"!! Convert !!"
	convertedScripts := oldStyleScripts collect: [:step | step asNewStyleScript].

	"Safety checks."
	errors := OrderedCollection new.
	convertedScripts do: [:step |
		self assert: step isDefault not.
		self assert: step isScript.
		
		[step definition block] "Compile! Check for syntax errors."
			on: SyntaxErrorNotification
			do: [:ex | errors add: step]
	].
	self assert: errors isEmpty.
	
	"Register in a common organization."
	newOrganization := ViQueryOrganizer new.
	convertedScripts do: [:step | step adoptOrganization: newOrganization].

	"Fix shared #next references. Duplicate stepts should be gc'ed automatically."
	(convertedScripts gather: [:script | script allSteps reject: [:ea | ea isDefault]]) asSet
		do: [:step | step next ifNotNil: [:next | step next: (newOrganization stepById: next id)]].
	
	"Remove unused duplicates."
	newOrganization tidy.
			
	"Safety checks."
	newOrganization orderedSteps do: [:step | step allStepsDo: [:ea |
		self assert: ea isRegistered.
		self assert: (ea isDefault or: [ea organization == newOrganization]).
		self assert: (ea definition isDefault or: [ea definition organization == newOrganization]).
	]].
	
	"Register in this organization."
	"TODO"
	self halt.
