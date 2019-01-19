Class {
	#name : #TnTrackingNumberDB,
	#superclass : #SpFileDatabase,
	#category : #'TrackingNumbers-Persistence'
}

{ #category : #accessing }
TnTrackingNumberDB class >> backupDirectoryParent [
	"Re-write this if you'd like your backups to be saved in a location other than the image folder"
	^ self pharoData
]

{ #category : #'class initialization' }
TnTrackingNumberDB class >> initialize [
	self setUp.
]

{ #category : #accessing }
TnTrackingNumberDB class >> pharoData [
	^ FileLocator home / 'Dynabook' / 'User Data'
]

{ #category : #'loading/saving' }
TnTrackingNumberDB class >> repositories [

	^ { TnTrackingNumber db }.
]

{ #category : #'loading/saving' }
TnTrackingNumberDB class >> restoreLastBackup [
	<script>
	^ super restoreLastBackup
]

{ #category : #'loading/saving' }
TnTrackingNumberDB class >> restoreRepositories: someRepositories [

	TnTrackingNumber restoreFrom: someRepositories first.
]

{ #category : #'loading/saving' }
TnTrackingNumberDB class >> saveRepository [
	<script>
	^ super saveRepository
]
