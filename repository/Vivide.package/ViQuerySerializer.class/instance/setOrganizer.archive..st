initialization
setOrganizer: o archive: aClass

	organizer := o.
	archive := aClass theMetaClass.
	
	steps := OrderedCollection new.
	commands := OrderedCollection new.
	definitions := OrderedCollection new.
	
	"cache to improve performance"
	stepSelectors := OrderedCollection new.
	commandSelectors := OrderedCollection new.
	definitionSelectors := OrderedCollection new.