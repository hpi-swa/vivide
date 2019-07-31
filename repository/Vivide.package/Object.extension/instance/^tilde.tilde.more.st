*vivide
~~> anotherObject
	"For convenience in tests and demos only.
	
	#(1 2 3) ~~> aPane
	[:num | num + 1] ~~> [:num | num * num] openScriptWith: #(1 2 3) "

	(anotherObject isKindOf: ViPane)
		ifTrue: [
			^ (ViFixedConnection from: nil to: anotherObject) objects: self asList; attach; yourself].
		
	^ {self. anotherObject} asScript