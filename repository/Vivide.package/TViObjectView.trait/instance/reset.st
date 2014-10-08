initialization
reset
	"Configure my view with actual data."
	
	self model ifNil: [^ self].

	"TBD ..."