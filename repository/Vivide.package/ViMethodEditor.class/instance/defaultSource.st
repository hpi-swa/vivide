initialization
defaultSource

	^ 'message: arg1 selector: arg2
	"This is a new message for {1} in ''{2}''."

	| temporary variable names |
	statements' format: {self theClass name. self protocol protocolname}