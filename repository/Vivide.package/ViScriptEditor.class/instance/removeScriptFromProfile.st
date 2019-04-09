actions - profile
removeScriptFromProfile
	"Note that you have to clean-up this profile's organization to also unregister all referenced steps that are no longer accessible anymore."
	
	self thisStep isDefault ifTrue: [self thisStep unregister].