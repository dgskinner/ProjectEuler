def integer_right_triangles
  right_triangles = {}
  (1..500).each do |a|
    (a..500).each do |b|
      (b..500).each do |c|
        p = a + b + c 
        next if ( p > 1000 || a + b < c )
        if is_right?(a, b, c)
          if right_triangles.has_key?(p)
            right_triangles[p] << [a, b, c]
          else
            right_triangles[p] = [[a, b, c]]
          end
        end
      end
    end
  end
  right_triangles.max_by{ |key, val| val.length }[0]
end

def is_right?(a, b, c)
  a**2 + b**2 == c**2
end

p integer_right_triangles # => 840