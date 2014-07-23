initialization
setOrganizer: o archive: aClass

	organizer := o.
	archive := aClass theMetaClass.
	
	steps := OrderedCollection new.
	commands := OrderedCollection new.
	definitions := OrderedCollection new.
	
	"cache to improve performance"
	stepSelectors := Dictionary new.
	commandSelectors := Dictionary new.
	definitionSelectors := OrderedCollection new.