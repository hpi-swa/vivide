testing
expectedFailures

	^ #(test02RecursionVersusReuse test04CopyRecursiveScript),
	"Is Vivide running and finds a default script right now?"
	(#defaultProperties asScript ifNil: [#(test05IsDefault test06AdoptOrganizationForDefaultScript)] ifNotNil: [#()])