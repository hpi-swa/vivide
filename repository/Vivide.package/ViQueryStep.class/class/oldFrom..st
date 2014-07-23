instance creation - old queries
oldFrom: statements
	"a list of '[:objs | objs gather: [:obj | ...]]'."

	| code |
	statements ifEmpty: [^ self transform: '[:objs | objs]'].
	
	statements size = 1 ifTrue: [
		^ self transform: statements first].
	
	code := statements
		inject: ''
		into: [:result :stmt | result := result, 
			('({1} value: objs),' format: {stmt})].
	code := code allButLast. "trailing comma"

	^ self transform: ('[:objs | {1}]' format: {code})