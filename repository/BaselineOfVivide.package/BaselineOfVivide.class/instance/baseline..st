baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec project: 'Signals' with: [
			spec
				className: 'BaselineOfSignals';
				repository: 'github://marceltaeumel/signals:master/repository'].

		spec project: 'Animations' with: [
			spec
				className: 'BaselineOfAnimations';
				repository: 'github://marceltaeumel/animations:master/repository'].

		spec project: 'Widgets' with: [
			spec
				className: 'BaselineOfWidgets';
				repository: 'github://marceltaeumel/widgets:master/repository';
				loads: #(full)].
		
		spec project: 'Refactoring-Core' with: [
				spec
					className: 'ConfigurationOfRefactoringBrowser';
					repository: 'http://www.squeaksource.com/MetacelloRepository';
					loads: #('Core');
					version: '2.0.2'].

		spec project: 'OCompletion' with: [
			spec
				className: 'ConfigurationOfOCompletion';
				repository: 'http://www.squeaksource.com/MetacelloRepository'].

		spec project: 'FFI' with: [
				spec
					className: 'ConfigurationOfFFI';
					repository: 'http://www.squeaksource.com/MetacelloRepository';
					loads: #('Core')].

		spec project: 'Sight-Coverage' with: [
			spec
				className: 'ConfigurationOfSightCoverage';
				repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/MetacelloRepository'].

		spec project: 'Sight-Callgraph' with: [
			spec
				className: 'ConfigurationOfSightCallgraph';
				repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/MetacelloRepository'].
			
		spec project: 'Sight-Tagging' with: [
			spec
				className: 'ConfigurationOfSightTagging';
				repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/MetacelloRepository'].

		spec package: 'VB-Regex' with: [
			spec repository: 'http://www.squeaksource.com/Regex'].
		
		spec package: 'JSON' with: [
			spec repository: 'http://www.squeaksource.com/JSON'].
					
		spec package: 'Icons' with: [
			spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'].
		
		spec package: 'Fonts' with: [
			spec
				repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/swaprivate';
				preLoadDoIt: #ensureAccessForFonts;
				postLoadDoIt: #postLoadFonts].

		spec project: 'PolySource' with: [
			spec
				className: 'ConfigurationOfCoExist';
				repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/MetacelloRepository'].

		spec project: 'ContextS2' with: [
			spec
				className: 'ConfigurationOfContextS';
				repository: 'http://www.squeaksource.com/MetacelloRepository'].

		spec project: 'SwaUtil' with: [
			spec
				className: 'ConfigurationOfSwaUtil';
				repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/MetacelloRepository'].

		"Internal packages."
		spec package: 'Vivide' with: [
			spec
				requires: #(Animations Signals 'VB-Regex' JSON Widgets Icons 'Refactoring-Core' OCompletion);
				preLoadDoIt: #preLoad;
				postLoadDoIt: #postLoad].
		spec package: 'VivideContextS' with: [
			spec
				requires: #('Vivide' ContextS2).
			].
		spec package: 'VivideDynamicAnalysis' with: [
			spec
				requires: #('Vivide' 'Sight-Coverage' 'Sight-Callgraph' 'Sight-Tagging' 'SwaUtil').
			].
				
		spec package: 'VividePolySource' with: [
			spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/vivide'.
			spec requires: #(Vivide PolySource).
			spec preLoadDoIt: #ensureAccessForVividePolySource].

		spec
			group: 'default' with: #('core');
			group: 'core' with: #('Vivide');
			group: 'dev' with: #('Fonts' FFI 'Vivide');
			group: 'coexist' with: #('Vivide' 'VividePolySource');
			group: 'dynamic' with: #('core' 'VivideDynamicAnalysis');
			group: 'cop' with: #('core' 'VivideContextS');
			group: 'TravisCI' with: #('Vivide')].