as yet unclassified
upToNextPropertiesForced

	[self upToNextProperties]
		on: ViAsyncError do: [:ex | ex resume].