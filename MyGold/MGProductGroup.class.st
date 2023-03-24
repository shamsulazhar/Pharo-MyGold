"
A product
"
Class {
	#name : #MGProductGroup,
	#superclass : #Object,
	#instVars : [
		'id',
		'timeStamp'
	],
	#category : #MyGold
}

{ #category : #'data retrieval' }
MGProductGroup class >> allButHeader: aTable [
	^ aTable allButFirst
]

{ #category : #'data retrieval' }
MGProductGroup class >> extractDataFromRootNode: aRootNode [
	| table timeDate |
	"Get date and time"
	timeDate := self extractDateTimeFromNode: aRootNode.
	"Get price table"
	table := self extractPriceTableFromNode: aRootNode.
	"Create and return a collection of models"
	^ table
		collect:
			[ :dataRow | (self newWith: dataRow) timeStamp: timeDate ]
]

{ #category : #'data retrieval' }
MGProductGroup class >> extractDateTimeFromNode: aNode [
	| dateTimeNodeValue dateTimeDict |
	"Get date and time"
	dateTimeNodeValue := self extractDateTimeNodeValue: aNode.
	dateTimeDict := self
		extractDateTimeDictFromNodeValue: dateTimeNodeValue.
	^ DateAndTime
		date: (dateTimeDict at: #date)
		time: (dateTimeDict at: #time)
]

{ #category : #'data retrieval' }
MGProductGroup class >> extractHeaderFromTable: aTable [
	^ aTable at: 1
]

{ #category : #'data retrieval' }
MGProductGroup class >> extractPriceTableFromNode: aNode [
	"Get price table"

	| table tableHeader tables |
	tables := aNode extractTables.
	table := tables at: (self priceTableKey: tables).
	tableHeader := self extractHeaderFromTable: table.
	self checkHeader: tableHeader.
	"Remove header row and return just the price data"
	^ self allButHeader: table
]

{ #category : #'instance creation' }
MGProductGroup class >> newWith: aData [
	^ self new setData: aData
]

{ #category : #accessing }
MGProductGroup >> id [
	^ id
]

{ #category : #accessing }
MGProductGroup >> id: anObject [
	id := anObject
]

{ #category : #testing }
MGProductGroup >> isSimilarTo: anObject [
self subclassResponsibility 
]

{ #category : #saving }
MGProductGroup >> saveUsingSession: aSession [
	"Checkif already in db"

	| result |
	"Check if there's already simillar data"
	result := aSession
		read: self class
		where: [ :row | self isSimilarTo: row ].
	"Save data if it is new"
	result ifEmpty: [ aSession register: self ]
]

{ #category : #initialization }
MGProductGroup >> setData: aData [
self subclassResponsibility 
]

{ #category : #accessing }
MGProductGroup >> timeStamp [
	^ timeStamp
]

{ #category : #accessing }
MGProductGroup >> timeStamp: anObject [
	timeStamp := anObject
]
