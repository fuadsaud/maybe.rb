# Maybe for Ruby

```ruby
include Maybe::Conversions

Nothing.>=(&:upcase)           # => NOTHING
Just('hey there').>=(&:upcase) # => Just('HEY THERE')
```
