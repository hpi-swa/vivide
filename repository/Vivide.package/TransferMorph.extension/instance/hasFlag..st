*vivide
hasFlag: aSymbol
	"Compatibility with ViTransferMorph and Squeak's pluggable widgets."
	
	(aSymbol = #script and: [copy == true])
		ifTrue: [^ true].
		
	^ aSymbol = #evaluate