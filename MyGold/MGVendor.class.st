"
Encapsulates a gold vendor
"
Class {
	#name : #MGVendor,
	#superclass : #Object,
	#category : #MyGold
}

{ #category : #'data retrieval' }
MGVendor class >> getRootNode [
	^ GoogleChrome get: self url.
]

{ #category : #'data retrieval' }
MGVendor >> extractDateTimeFromNode: aNode [
	|    dateTimeNodeValue dateTimeDict |
	"Get date and time"
	dateTimeNodeValue := self extractDateTimeNodeValue: aNode.
	dateTimeDict := self
		extractDateTimeDictFromNodeValue: dateTimeNodeValue.
	^ DateAndTime
		date: (dateTimeDict at: #date)
		time: (dateTimeDict at: #time)
]

{ #category : #'data retrieval' }
MGVendor >> extractPriceTableFromNode: aNode [
	"Get price table"

	| table tableHeader tables |
	tables := aNode extractTables. 
	table :=  tables at: (self priceTableKey: tables).
	tableHeader := self extractHeaderFromTable: table.
	self checkHeader: tableHeader.
	"Remove header row and return just the price data"
	^ self allButHeader: table
]

{ #category : #'as yet unclassified' }
MGVendor >> getProductGroups [
	self subclassResponsibility 
]
