running
setUp

	super setUp.
	converter := self converterClass new.
	converter profile: self exampleProfile.