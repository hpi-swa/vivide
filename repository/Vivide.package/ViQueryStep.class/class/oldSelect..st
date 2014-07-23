instance creation - old queries
oldSelect: statements
	"a list of '[:node | node isBlue]'."

	| code |
	statements ifEmpty: [^ nil].
	
	statements size = 1 ifTrue: [
		^ self select: statements first].
	
	code := statements
		inject: ''
		into: [:result :stmt | result := result, 
			('({1} value: someObject) &' format: {stmt})].
	code := code allButLast. "trailing AND"

	^ self select: ('[:someObject | {1}]' format: {code})