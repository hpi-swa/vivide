references
asReference
	"Backwards compatibility. Use #before and #after instead."
	
	| ref |
	ref := { [:in :out | out addAll: in] -> { #after -> self id asList } } asScript.
	
	ref
		unregister;
		organization: self organization;
		register.
	ref definition;
		unregister;
		organization: self organization;
		register.
		
	^ ref