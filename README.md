# Maybe for Ruby

```ruby
def str_upcase(str)
  str.upcase
end

Maybe::NOTHING.>=(&:upcase)           # => Maybe::NOTHING
Maybe::Just('hey there').>=(&:upcase) # => Maybe::Just('HEY THERE')
```
