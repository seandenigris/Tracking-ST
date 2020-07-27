Class {
	#name : #TnTrackingNumberDB,
	#superclass : #SpFileDatabase,
	#category : #'TrackingNumbers-Persistence'
}

{ #category : #accessing }
TnTrackingNumberDB class >> backupDirectoryParent [
	"Re-write this if you'd like your backups to be saved in a location other than the image folder"
	^ FileLocator dynabookData
]

{ #category : #'loading/saving' }
TnTrackingNumberDB class >> schema [

	^ { TnTrackingNumber }.
]
