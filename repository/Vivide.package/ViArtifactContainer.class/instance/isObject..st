testing - object
isObject: anObject
	"Give this artifact the chance to check similarity to another object."

	self flag: #rename. "mt: Rename to #isObjectSimilarTo:?"
	^ self object = anObject