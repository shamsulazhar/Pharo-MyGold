"
The main gold app

"
Class {
	#name : #MyGoldApp,
	#superclass : #Object,
	#instVars : [
		'login',
		'session',
		'vendors'
	],
	#category : #MyGold
}

{ #category : #'as yet unclassified' }
MyGoldApp >> convert: aSQLiteLogin to: aMySQLLogin [
|sqliteSession mySQLSession uobGoldBullionTableRows|

sqliteSession := MyGoldDescriptorSystem sessionForLogin: aSQLiteLogin .
mySQLSession := MyGoldDescriptorSystem sessionForLogin: aMySQLLogin .

PharoDatabaseAccessor DefaultDriver: GlorpSQLite3Driver .
sqliteSession login.

uobGoldBullionTableRows := sqliteSession read: MGUOBGoldBullion.

]

{ #category : #converting }
MyGoldApp >> convertSQLiteToMySQL [
	| tableClassNames tempSession tableRows tempLogin |
	tableClassNames := (MyGoldDescriptorSystem methodDictionary keys
		select: [ :each | each beginsWith: 'classModelFor' ])
		collect: [ :each | (each asString allButLast splitOn: 'classModelFor') at: 2 ].

	"-----------------------------------------------------------------------------"
	"Iterate over each tableClassName"
	"-----------------------------------------------------------------------------"
	tableClassNames
		do: [ :tableClassName | 
			| tableClass |
			"---------------------------------------------------------------------------"
			"Read from SQLite"
			"---------------------------------------------------------------------------"
			tableClass := tableClassName asClass.
			PharoDatabaseAccessor DefaultDriver: GlorpSQLite3Driver.
			tempLogin := self createSQLiteLogin.
			tempSession := MyGoldDescriptorSystem sessionForLogin: tempLogin.
			tempSession login.
			tableRows := tempSession read: tableClass.
			tempSession logout.

			"---------------------------------------------------------------------------"
			"Convert to MySQL"
			"---------------------------------------------------------------------------"
			PharoDatabaseAccessor DefaultDriver: MySQLDatabaseDriver.
			tempLogin := self createMySQLLocalLogin.
			tempSession := MyGoldDescriptorSystem sessionForLogin: tempLogin.
			tempSession login.
			tempSession
				inUnitOfWorkDo: [ tableRows do: [ :each | tempSession register: each ] ].
			tempSession logout ]
]

{ #category : #initialization }
MyGoldApp >> createLogin [
	^ self createMySQLLogin 
]

{ #category : #initialization }
MyGoldApp >> createMySQLLocalLogin [
	^ Login new
		database: MySQLODBCPlatform new;
		host: 'localhost';
		port: 8889;
		username: 'root';
		password: 'root';
		databaseName: 'ab86864_MyGold';
		yourself
]

{ #category : #initialization }
MyGoldApp >> createMySQLLogin [
	^ Login new
		database: MySQLODBCPlatform new;
		host: 'localhost';
		port: 5522;
		username: 'ab86864_MyGold';
		password: 'QQDqp@oCqoS`n2gH7o';
		databaseName: 'ab86864_MyGold';
		yourself
]

{ #category : #initialization }
MyGoldApp >> createSQLiteLogin [

	| workingDir |
	workingDir := SmalltalkImage current imagePath asFileReference parent
		fullName , FileSystem disk delimiter asString.
	^ Login new
		database: UDBCSQLite3Platform new;
		host: workingDir;
		port: '';
		username: '';
		password: '';
		databaseName: 'MyGold.db';
		yourself

]

{ #category : #initialization }
MyGoldApp >> initialize [
	super initialize.
	login := self createLogin.
	session := MyGoldDescriptorSystem sessionForLogin: login.
	vendors := {
	MGMaybank new.
	MGUOB new.
	MGPublicGold new.}
]

{ #category : #accessing }
MyGoldApp >> login [
	^ login
]

{ #category : #accessing }
MyGoldApp >> login: anObject [
	login := anObject
]

{ #category : #run }
MyGoldApp >> run [
	"Retrieve gold prices"

	session login.
	vendors
		do: [ :aVendor | 
			| rootNode |
			rootNode := aVendor class getRootNode.
			aVendor getProductGroups
				do: [ :productGroup | 
					| productDataTable |
					productDataTable := productGroup extractDataFromRootNode: rootNode.
					session
						inUnitOfWorkDo: [ productDataTable
								do: [ :product | product saveUsingSession: session ] ] ] ].
	session logout
]

{ #category : #accessing }
MyGoldApp >> session [
	^ session
]

{ #category : #accessing }
MyGoldApp >> session: anObject [
	session := anObject
]

{ #category : #accessing }
MyGoldApp >> vendors [
	^ vendors
]

{ #category : #accessing }
MyGoldApp >> vendors: anObject [
	vendors := anObject
]
