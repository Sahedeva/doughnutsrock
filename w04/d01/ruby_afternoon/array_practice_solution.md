```ruby

students = ['Suzy', 'Daniel', 'James', 'Mary', 'Phillip', 'Siegfried']

new_students = students.map do |x|
    if x.include? 'a'
        x = "A+ #{x}"     
    end
    x
end

new_students.sort!

only_a_students = new_students.select do |x|
    if x.include? 'A+'
        true
    else 
        false
    end
end

puts "There are #{only_a_students.length} A+ students"
```
