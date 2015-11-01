# Maybe for Ruby

```ruby
Maybe::NOTHING.>=(&:upcase)           # => Maybe::NOTHING
Maybe::Just('hey there').>=(&:upcase) # => Maybe::Just('HEY THERE')
```
