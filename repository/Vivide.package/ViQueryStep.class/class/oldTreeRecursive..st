instance creation - old queries
oldTreeRecursive: statements
	"a list of '[:node | node children]'."

	| code |
	statements ifEmpty: [^ nil].
	
	statements size = 1 ifTrue: [
		^ self collect: statements first].

	code := statements
		inject: ''
		into: [:result :stmt | result := result, 
			('([{1} value: obj] on: Error do: [#()]),' format: {stmt})].
	code := code allButLast. "trailing comma"

	^ self collect: ('[:obj | {1}]' format: {code})