convenience
into: tempOrga during: workBlock

	| priorOrga priorProfile |
	priorProfile := self profile.
	priorOrga := self organization.
		
	[
		self profile: nil.
		self organization: tempOrga.
		^ workBlock cull: self
	] ensure: [
		self profile: priorProfile.
		self organization: priorOrga]