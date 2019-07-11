# SlashTEC interview-test (Bayport) 
# This has been borrowed from another assessment.

We’d like to invite you to do the # DevOps technical assignment​ as discussed during your interview. 

This repo contains the assignment and should contain all the information you need​


This is the assessment:


DevOps technical assignment


Goals

The applicant should be able to:

deploy isolated web applications
write infrastructure as code
explain design decisions and chosen technologies
handover the project to new colleagues

Background

Provided are two different web API's for a fictional airport application, only GET requests are supported:

country-service: a service which returns basic information about countries
Endpoint: /countries to get a full list of countries
Endpoint: /countries/<query> to search for country by name / ISO code.
airport-service
version 1.0.1: a service which returns information about airports with country codes
Endpoint: /airports to get a full list of airports and their runways
Endpoint: /airports/<query> to get a list of airports based on country code (e.g.: "NL")
version 1.1.0: a service which returns information about airports with country codes
Endpoint: /airports?full=[0|1] returns a summary or all details of all airports, depending on the value of full.
Endpoint: /airports/<id> returns the full information of an airport based on its identifier. E.g.: /airports/EHAM returns all information for Schiphol.
Endpoint: /search/<qry> returns a list of airports based on a country code search.

In addition to their application-specific endpoints all versions of both services expose the following two endpoints:

/health/live returns 200 when the HTTP server is up.
/health/ready returns 200 when the service is done initializing and ready to serve requests, 503 when the service is still initializing.

The above-mentioned services should run in isolated environments and both endpoints are combined and exposed using a reverse-proxy and/or load-balancer.


Requirements

The applicant can choose any technology stack, and should meet the following requirements:

The entire stack should be able to run locally on a developer's machine
The country- and airport-service run isolated from each other
No inter-communication between the two services is possible
No direct communication from the "outside world" is possible with the two services
A reverse-proxy and/or load-balancer exposes the services on port 8000
Initially, airports version 1.0.1 is deployed
An update to the airports service from version 1.0.1 to version 1.1.0 can be triggered at the code review without causing a service interruption.
Bonus points for increased use of automation, e.g.:
Automation of the deployment using a CI/CD tool.
Single click/command startup of the initial stack.

Resources

The services are available for download:

country-service:
URL: countries-assembly-1.0.1.jar
SHA-1: 92bf1a691fc6dc835b21e0d74102c41ad84635f9 countries-assembly-1.0.1.jar
airport-service v1.0.1:
URL: airports-assembly-1.0.1.jar
SHA-1: 0bd35ea555b9aabaf30d255f3cb90aedf6bebca1 airports-assembly-1.0.1.jar
airport-service v1.1.0:
URL: airports-assembly-1.1.0.jar
SHA-1: 40d479396e37f61b88913ad3de3a421c75ed8f45 airports-assembly-1.1.0.jar
The services can be started with a single command, require Java 8 and run by default on port 8080: java -jar <service_name>.jar


Deliverables

Share the code on Github/Bitbucket at least 1 day before your review so that we have enough time to review and test before the call.
A running version of your solution during the technical interview. If you have problems or difficulties running your solution during the interview, please provide us with detailed instructions on how to run your solution.
