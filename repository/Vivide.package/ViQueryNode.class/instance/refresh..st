reset
refresh: anObject
	"Workaround for strange notification sources. Just ignore the object."

	self flag: #deprecated. "mt: Use #refresh."
	self refresh.