baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: 'SimplePersistence' with: [ 
				spec repository: 'github://seandenigris/Simple-Persistence:master/repository' ];
			baseline: 'ExternalWebBrowser' with: [
				spec repository: 'github://seandenigris/Pharo-Web-Browser:master/repository' ];
			package: #'TrackingNumbers'  with: [
				spec
					requires: #( #'SimplePersistence' #'ExternalWebBrowser'). ] ]