# Decorator Pattern

## Concept

The Decorator pattern allows behavior to be added to individual objects dynamically, without affecting the behavior of other objects from the same class.

## When to Use
- You want to add responsibilities to individual objects without subclassing.
- You need a flexible alternative to subclassing for extending functionality.

## Simple Template (template.rb)
- A `Coffee` object has a base cost.
- Decorators like `MilkDecorator` and `SugarDecorator` add behavior by wrapping the base object.

## Advanced Implementation (advanced/invoice_formatter.rb)
- Decorators dynamically modify the output of an `Invoice`.
- Each decorator adds a different layer (e.g., header, footer, signature).
- You can compose decorators in any order and combination.

## Real-World Example in Rails

### 1. Draper Gem
```ruby
# Wrap models with decorators to add presentation logic
class ProductDecorator < Draper::Decorator
  def formatted_price
    "$#{'%.2f' % object.price}"
  end
end
```

### 2. View Helpers
```ruby
# You might wrap strings or model outputs using helper decorators in views
content_tag(:div, user.name.titleize, class: "user-name")
```

### 3. Service Object Enhancers
```ruby
# Layer features such as logging, error handling, or formatting around a core service
```

## Pros
- Adds functionality without subclassing.
- Flexible and dynamic composition.
- Promotes single responsibility principle.

## Cons
- Can result in many small classes.
- Can be complex to trace behavior if overused.

## Alternatives in Ruby
- Modules with `prepend` for runtime composition.
- Lambdas or service pipelines for simple, composable behavior.