*vivide
~~~ aSymbol
	"For convenience in tests and demos only.
	#(1 2 3) ~~~ #fixed ~~> aPane
	
	As a complement for this
	aPane ~~~ #auto ~~> aPane
	aPane ~~> aPane"

	^ ViFixedConnection new objects: self asList; yourself