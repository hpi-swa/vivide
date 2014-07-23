initialization
defaultSource

	^ 'messageSelectorAndArgumentNames
	"This is a new message for {1}."

	| temporary variable names |
	statements' format: {self theClass name}