accessing
affectedMorphs: someMorphs

	morphs := WeakSet newFrom: someMorphs.
	categories := Vivide tracingCategoriesFor: someMorphs.