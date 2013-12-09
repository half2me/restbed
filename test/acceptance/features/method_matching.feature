# language: en

Feature: Resource method matching
	In order to create a RESTful service
	As a developer
	I want to create custom resource method handlers

	Scenario: Default resource methods
		Given I have published a default resource
		When I perform a HTTP "<method>" request
		Then I should see a status code of "<status>"

	Examples:
		| method  | status |
		| GET     | 401    |
		| PUT     | 401    |
		| POST    | 401    |
		| HEAD    | 200    |
		| TRACE   | 200    |
		| DELETE  | 401    |
		| CONNECT | 401    |
		| OPTIONS | 200    |

	Scenario: Custom resource methods
		Given I have published a resource with a custom "<method>" handler
		When I perform a HTTP "<method>" request
		Then I should see a status code of "<status>"
		
	Examples:
		| method  | status |
		| GET     | 200    |
		| PUT     | 200    |
		| POST    | 200    |
		| HEAD    | 200    |
		| TRACE   | 200    |
		| DELETE  | 200    |
		| CONNECT | 200    |
		| OPTIONS | 200    |
		