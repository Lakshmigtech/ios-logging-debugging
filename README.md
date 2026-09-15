# iOS Logging & Debugging

A native iOS technical showcase demonstrating structured logging and debugging practices using Swift and Apple's OSLog framework.

## Technologies

* Swift
* UIKit
* OSLog
* URLSession
* Async/Await
* Protocol-Oriented Programming
* Dependency Injection
* Performance Monitoring
* Memory Debugging
* XCTest

## Architecture

The project follows a centralized logging architecture:

```text
Application
     ↓
AppLogger
     ↓
Logger Protocol
     ↓
OSLog Logger
     ↓
Apple Unified Logging System
```

Network activity is logged separately to keep network debugging concerns isolated from application logging.

## Key Implementations

* Centralized application logging
* Structured logging using OSLog
* Log levels
* Log categories
* Network request logging
* Network response logging
* HTTP status code logging
* Request duration logging
* Sensitive data masking
* Debug-only logging
* Performance measurement
* Memory debugging utilities
* Protocol-based logger abstraction
* Dependency injection
* Unit testing

## Log Levels

The implementation supports common logging levels:

* Debug
* Info
* Notice
* Warning
* Error
* Fault

Different levels can be used depending on the severity and purpose of the message.

## Log Categories

Logs are organized into categories such as:

* Network
* Authentication
* Database
* UI
* Performance
* Application

This makes debugging and filtering logs easier.

## Network Logging

The network logging layer demonstrates logging useful debugging information such as:

* HTTP method
* Request URL
* Request duration
* HTTP status code
* Response size
* Request failure
* Response failure

Sensitive request and response data is masked before logging.

## Security

Sensitive information should never be written directly to application logs.

The implementation demonstrates masking of values such as:

* Passwords
* Access tokens
* Authorization headers
* API keys
* Personal information

Production logging should always follow the application's security and privacy requirements.

## Performance Debugging

The project includes utilities for measuring execution time of operations.

This can be used to identify:

* Slow API calls
* Expensive operations
* Long-running tasks
* Performance bottlenecks

## Memory Debugging

Debugging utilities are included to help identify potential memory-management issues such as:

* Unexpected object retention
* View controller lifecycle issues
* Potential retain cycles

## Debug vs Production

Debug logging should be more detailed during development, while production logging should avoid sensitive information and unnecessary verbose output.

The implementation provides a central location to control logging behavior.

## Testing

The logging components are designed for testability using:

* Protocol-based dependencies
* Mock loggers
* Dependency injection
* XCTest

## Purpose

This project demonstrates practical iOS development practices for implementing structured logging and debugging mechanisms that improve application observability, troubleshooting, performance analysis, and maintainability.

The repository is created for technical showcase purposes and does not contain production or client-specific code.
