as yet unclassified
expectedFailures

	^ #(test02RecursionVersusReuse),
	"Is Vivide running and finds a default script right now?"
	(#defaultProperties asScript ifNil: [#(test05IsDefault test06AdoptOrganizationForDefaultScript)] ifNotNil: [#()])