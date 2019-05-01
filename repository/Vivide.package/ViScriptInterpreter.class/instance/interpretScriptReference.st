interpreting - private
interpretScriptReference
	"Backwards compatiblilty."
	
	self next reference ifNotNil: [:step |
		self stack push: step activate].