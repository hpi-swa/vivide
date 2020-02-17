actions - profile
copyToClipboard

	ViConverterForClipboard default
		writeStep: self thisStep
		withInput: self input.
	
	self inform: 'Script was copied to clipboard.' for: self.