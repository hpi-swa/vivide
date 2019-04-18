initialization
initialize

	super initialize.
	self
		organization: ViScriptOrganizer new;
		register.

	self notifier doSilently: [
		self
			definition: (ViQueryStepDefinition new
				organization: self organization;
				register;
				yourself).
		self definition notifier doSilently: [
			self definition sourceCode: '']].