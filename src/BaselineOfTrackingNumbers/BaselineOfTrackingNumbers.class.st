Class {
	#name : #BaselineOfTrackingNumbers,
	#superclass : #BaselineOf,
	#category : #BaselineOfTrackingNumbers
}

{ #category : #testing }
BaselineOfTrackingNumbers class >> isDynabook [
	^ true
]

{ #category : #baselines }
BaselineOfTrackingNumbers >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: #'DynabookFoundation' with: [
				spec repository: 'github://seandenigris/Dynabook-Foundation' ];
			baseline: #'ExternalWebBrowser' with: [
				spec repository: 'github://seandenigris/Pharo-Web-Browser:master/repository' ];
			baseline: #'SimplePersistence' with: [ 
				spec repository: 'github://seandenigris/Simple-Persistence:master/repository' ];
			package: #'TrackingNumbers'  with: [
				spec
					requires: #(#'DynabookFoundation' #'ExternalWebBrowser' #'SimplePersistence'). ] ]
]
