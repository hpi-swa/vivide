hints - input kind
setInputKind: class tupleIndex: index
	"Set the script's input kind. Use the tuple index to update part of the tuple input kind."
	
	index = 0 ifTrue: [
		self object setProperty: #inputKind toValue: class.
		self clear.
		^ self].
	
	(self object valueOfProperty: #inputKind) copy in: [:tupleInput |
		tupleInput at: index put: class.
		self object setProperty: #inputKind toValue: tupleInput.
		self clear].