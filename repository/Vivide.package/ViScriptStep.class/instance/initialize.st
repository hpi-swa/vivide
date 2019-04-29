initialization
initialize

	super initialize.
	self
		organization: ViScriptOrganizer new;
		register.

	self notifier doSilently: [
		self
			definition: (ViScriptDefinition new
				adoptOrganization: self organization;
				yourself).
		self definition notifier doSilently: [
			self definition sourceCode: '']].