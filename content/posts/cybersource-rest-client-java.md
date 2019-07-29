+++
title = "CyberSource REST Client Java"
date = 2018-06-19T09:09:09+07:00
tags = ["java", "cybersource"]
categories = []
+++

From: https://github.com/CyberSource/cybersource-rest-client-java

The CyberSource Java client provides convenient access to the [CyberSource REST API](https://developer.cybersource.com/api/reference/api-reference.html) from your Java application.

## Requirements

Java 1.8 or later.

## Installation

* Maven Dependency:

```xml
<dependency>
	<groupId>com.cybersource</groupId>
	<artifactId>cybersource-rest-client-java</artifactId>
	<version>0.0.4</version>
</dependency>
```

* Gradle Dependency

```gradle
dependencies {
	compile 'com.cybersource:cybersource-rest-client-java:0.0.4'
}
```

## Using the Sample Code

The samples are all completely independent and self-contained. You can analyze them to get an understanding of how a particular method works, or you can use the snippets as a starting point for your own project.

### Clone (or download) this repository:

```
    $ git clone https://github.com/CyberSource/cybersource-rest-samples-java
```

### Running the Samples using IntelliJ IDE

* Open the project/folder (rather than import or new).

* Build the project:
	* From the Build menu, select Rebuild Project.

* Run any sample:
	* For example, select ProcessPayment class from the class Explorer
	* Right-click and select Run `ProcessPayment.Main()`

## Setting Your API Credentials

To set your API credentials for an API request,Configure the following information in `src/main/java/data/Configuration.java` file:
  
  * Http Signature

```java
   authenticationType  = http_Signature
   merchantID          = your_merchant_id
   merchantKeyId       = your_key_serial_number
   merchantsecretKey   = your_key_shared_secret
```
  * Jwt

```java
   authenticationType  = Jwt
   merchantID          = your_merchant_id
   keyAlias            = your_merchant_id
   keyPassword         = your_merchant_id
   keyFileName         = your_merchant_id
   keysDirectory       = resources
```

## Switching between the sandbox environment and the production environment
CyberSource maintains a complete sandbox environment for testing and development purposes. This sandbox environment is an exact
duplicate of our production environment with the transaction authorization and settlement process simulated. By default, this SDK is 
configured to communicate with the sandbox environment. To switch to the production environment, set the appropriate environment 
constant in resources/cybersource.properties file.  For example:

```java
// For TESTING use
  runEnvironment      = CyberSource.Environment.SANDBOX
// For PRODUCTION use
// runEnvironment      = CyberSource.Environment.PRODUCTION
```


The [API Reference Guide](https://developer.cybersource.com/api/reference/api-reference.html) provides examples of what information is needed for a particular request and how that information would be formatted. Using those examples, you can easily determine what methods would be necessary to include that information in a request
using this SDK.
