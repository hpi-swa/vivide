initialization
updateFor: aScript in: anEnvironment
	"Remember last script's organization for pane configuration."
	
	organizer := aScript organization.
	fullScript := nil.