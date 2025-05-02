# Design Patterns Study Repository

This repository is dedicated to studying and implementing classic software design patterns. Each pattern is implemented in a clear and minimalistic way to focus on its core idea and practical use cases.

## Implemented Patterns

### 🔷 Abstract Factory
Provides an interface for creating families of related or dependent objects without specifying their concrete classes. It helps to enforce consistency among products and makes it easy to exchange families of products.

### 🔨 Builder
Separates the construction of a complex object from its representation, allowing the same construction process to create different representations. It's particularly useful when creating objects with many optional fields or configurations.

### 🏭 Factory Method
Defines an interface for creating an object but lets subclasses alter the type of objects that will be created. It promotes loose coupling by eliminating the need to bind application-specific classes into the code.

### 🧍 Singleton
Ensures that a class has only one instance and provides a global point of access to it. Useful when exactly one object is needed to coordinate actions across the system (e.g., a configuration manager or logging service).

### 📋 Template Method
Defines the skeleton of an algorithm in a method, deferring some steps to subclasses. It allows subclasses to redefine certain steps of an algorithm without changing its overall structure.

### 📋 Observer
Defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified automatically. This decouples the subject from the observers.

### 📋 Strategy
Defines a family of algorithms, encapsulates each one, and makes them interchangeable. This allows the algorithm to vary independently from clients that use it.

## Future Patterns to Explore

Here are some design patterns planned for future study and implementation:

- **Decorator** – Attach additional responsibilities to an object dynamically.
- **Adapter** – Convert the interface of a class into another interface that clients expect.
- **Facade** – Provide a unified interface to a set of interfaces in a subsystem.
- **Command** – Encapsulate a request as an object, thereby letting you parameterize clients with different requests.
- **State** – Allow an object to alter its behavior when its internal state changes.
- **Composite** – Compose objects into tree structures to represent part-whole hierarchies.
- **Proxy** – Provide a surrogate or placeholder for another object to control access to it.
- **Chain of Responsibility** – Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request.
