interpreting - background
upToNextPropertiesForced

	[self upToNextProperties]
		on: ViAsyncError do: [:ex | ex resume].