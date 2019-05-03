tests
test04DefaultPropertiesView
	"There should be no view configured for the #defaultProperties script so that the profile's #defaultView will be used for scripts without any property extraction *and* #view property."

	| script profile organization |
	profile := ViProfile newMinimal.
	profile defaultView: #testDummy.

	organization := profile organization.
	script := [:num | num * num] asScript.

	ViActiveProfile value: profile during: [
		ViActiveScriptOrganizer value: organization during: [
	
			#defaultProperties asScript in: [:default |
				default allStepsDo: [:step |
					self deny: (step hasProperty: #view)].
				self
					assert: #testDummy
					equals: default viewClass].
				
			self
				assert: #testDummy
				equals: script viewClass.
		
	]].