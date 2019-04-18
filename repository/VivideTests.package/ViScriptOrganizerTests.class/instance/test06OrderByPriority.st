tests
test06OrderByPriority
	"The script organization considers the #priority property to order scripts."
	
	| scriptOne scriptTwo |
	scriptOne := {[:ea | ea * ea] -> {#priority -> 50}} asScript.
	scriptTwo := {[:morph | morph submorphs] -> {#priority -> 10}} asScript.
	
	scriptOne adoptOrganization: organization.
	scriptTwo adoptOrganization: organization.
	
	self
		assert: scriptTwo equals: organization orderedSteps first;
		assert: scriptOne equals: organization orderedSteps second.