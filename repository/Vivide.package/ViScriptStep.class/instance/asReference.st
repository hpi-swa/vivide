references
asReference
	"Backwards compatibility. Use #before and #after instead."
	
	^ { '[:in :out | out addAll: in]' -> { #after -> self id asList } } asScript