accessing
subjectClass
	"Infer subject class from test case class name."
	
	#(Tests Test TestCase) do: [:suffix |
		(self class name endsWith: suffix)
			ifTrue: [^ Smalltalk at: (self class name allButLast: suffix size) asSymbol]].
		
	self subclassResponsibility.