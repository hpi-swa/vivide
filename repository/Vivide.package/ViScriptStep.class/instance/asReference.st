as yet unclassified
asReference
	"Backwards compatibility."
	
	^ { [:in :out | out addAll: in] -> { #after -> self id asList } } asScript
		adoptOrganization: self organization;
		yourself