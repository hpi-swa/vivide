as yet unclassified
resetLocalArchive
	"Removes all contents from the local script archive."
	
	"self resetLocalArchive"
	
	(Smalltalk classNamed: 'ViLocalScriptArchive')
		ifNotNil: [:cls | cls removeFromSystem].