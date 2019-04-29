tests - organization
test07OrganizeStepsIdChange

	| script organization |
	script := { [:num | num + num] -> { #id -> #foo } } asScript.
	organization := script organization.

	self
		assert: #foo equals: script id;
		assert: script isRegistered;
		assert: script organization == organization.
	
	script id: #bar.

	self
		assert: #bar equals: script id;
		assert: script isRegistered;
		assert: script organization == organization.