accessing
affectedMorphs: someMorphs

	morphs := WeakSet newFrom: someMorphs.
	categories := SdCallgraphManager tracingCategoriesFor: someMorphs.