actions
autoCategorizeMethod
	"Adapted from OmniBrowser, OBCmdAutoCategorize >> #execute."
	
	| organizers organizer |
	organizer := self theClass organization.
	organizers := organizer subject withAllSuperclasses collect: [:ea | ea organization].
	((organizers collect: [:org | org categoryOfElement: self selector]) 
		detect: [:ea | ea ~= ClassOrganizer default and: [ea notNil]]
		ifNone: []) ifNotNil: [:found | organizer classify: self selector under: found].