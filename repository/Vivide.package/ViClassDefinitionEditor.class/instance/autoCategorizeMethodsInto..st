actions
autoCategorizeMethodsInto: aCategorizer
	"Adapted from OmniBrowser, OBCmdAutoCategorize >> #execute."
	
	| organizers organizer |
	organizer := aCategorizer.
	organizers := organizer subject withAllSuperclasses collect: [:ea | ea organization].
	(organizer listAtCategoryNamed: ClassOrganizer default) do: [:sel | 
		((organizers collect: [:org | org categoryOfElement: sel]) 
			detect: [:ea | ea ~= ClassOrganizer default and: [ea notNil]]
			ifNone: []) ifNotNil: [:found | organizer classify: sel under: found]].