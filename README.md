# Maybe for Ruby

```ruby
Maybe::Nothing.>=(&:upcase)           # => NOTHING
Maybe::Just('hey there').>=(&:upcase) # => Just('HEY THERE')
```
