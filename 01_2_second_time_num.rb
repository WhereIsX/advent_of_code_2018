require 'pry-nav'
require 'set'

def second_same_sum(num_array)
  sums = Set[0]
  last_sum = 0
  while true

    num_array.each do |num|

      new_sum = num + last_sum
      if sums === new_sum
        puts new_sum
        return new_sum
      end
      last_sum = new_sum
      sums << new_sum

    end
  end
end

num_array = %w{+4
-18
+8
+16
-13
-10
-11
-18
+9
-15
+19
+14
-13
+7
-10
-20
+19
-11
-20
-13
+6
+12
+19
+19
+13
-9
+18
+12
-3
+17
+15
+7
-19
-13
+20
+8
-14
-2
+18
-14
+1
-9
-18
+13
+2
+2
-3
+2
+5
+8
+17
+11
+9
-6
-16
+3
+15
-14
+11
+5
+17
-18
+10
-15
-4
-18
-17
-8
-18
-13
+8
+9
-13
-1
-10
+18
-4
+12
+10
-5
+3
-9
-16
-1
+9
+22
+20
-1
-3
+6
+9
+10
-12
+8
+16
+19
-10
+12
+3
+8
-1
-14
+10
-2
-10
-8
+11
+11
+10
-19
+13
+14
-1
-8
+4
+12
-14
-10
-18
-16
+6
-16
+4
-3
+16
-18
+20
+23
+13
+2
-17
+24
+11
+3
+1
-14
-16
+17
-8
-10
+21
+1
+12
+8
+10
+8
-5
+13
+16
+7
-10
+5
+7
+13
+2
+5
+2
+15
+3
+7
-13
-10
-5
-15
-14
-12
+5
-12
+15
+19
+12
+19
-13
-16
-13
+3
-8
-5
-16
-8
+16
+6
+14
-4
+18
+8
+12
+1
-3
+14
-15
-6
-15
+5
+1
+2
+11
+23
+17
+2
+8
-1
-16
-2
+12
+17
-5
-14
-17
+11
-1
-14
+19
-1
-6
+14
+7
-1
+13
-1
-19
+13
+9
-19
+20
+6
+9
+14
+10
+4
-8
-1
-7
-5
-4
+18
-6
-16
-3
-9
+17
+21
-14
+7
+8
+7
-16
-20
-18
+4
+19
+3
+3
+1
+18
+4
+3
-4
-7
-10
-7
-17
+12
-8
-19
-6
-15
+11
+12
+16
-4
-17
+19
-4
-8
-5
+22
-15
-19
-19
+3
-12
-2
+5
-12
-16
+22
+16
+1
-22
-24
-1
-6
-15
-26
+5
-8
-19
+18
-10
-3
+20
+1
+14
+20
+4
-22
-12
+4
+7
-8
-17
-2
+1
+20
+21
+6
+34
+11
-17
+23
-9
-17
+25
+11
+91
+8
+2
-19
-4
+17
+3
+6
+11
+1
+6
-11
+2
+7
+10
+14
+4
-17
+9
-6
-10
+12
+19
-3
+12
-11
-12
+9
+7
+8
-4
+11
+11
+1
-2
-12
+10
-14
+20
-11
-7
+19
+8
+2
+4
+4
+6
+7
+8
+1
+4
+6
-3
-9
-12
-11
-17
-16
+5
-1
+17
+16
-8
+9
+13
+15
-3
+6
+19
-3
+15
-19
-14
-12
-5
-25
-17
-18
+17
+5
-10
+21
+18
+6
+14
-16
+9
+18
+6
+6
-2
+15
-21
+1
+19
-1
-3
+7
+26
-21
+1
-32
-3
+16
-11
-22
-13
-1
-15
+19
+5
-13
-15
+11
-33
+11
-18
+3
-1
-8
+2
-11
-17
+7
-9
-19
+7
+18
-5
+10
-19
+11
-8
+4
+13
-15
+10
-16
-11
-6
-10
-5
+1
+19
+5
-16
+2
+6
-13
+4
-6
+10
-9
-20
-12
-12
+37
-19
+13
-35
+63
-11
-8
+25
-1
+11
+27
-3
+6
-10
+12
+28
-21
-75
+29
+35
+41
+15
-12
+8
-3
+104
+7
+29
-4
+23
+20
+11
+15
+16
+6
+14
+17
-12
-20
+11
+10
-4
-3
-12
+2
+5
-4
-14
-1
+9
-12
-31
-1
-7
-2
-24
+30
-50
-20
+34
-109
+27
-114
+299
+6
-13
+34
-7
+15
-89
+13
+78113
-12
+11
+7
-14
-5
-18
-3
-3
-4
+8
+1
+8
+5
-11
+19
-17
-14
-18
+9
-6
+11
-10
+18
+11
+18
-6
-5
+14
+4
-14
-5
-2
+18
+15
-2
+17
+8
+8
-3
+4
+4
+9
+10
+12
+6
-14
+13
+6
+10
-8
-19
+13
-3
+15
+17
-11
+18
-5
+16
-6
-8
+1
+9
+14
-6
-16
-16
+6
+12
-9
+18
+10
+5
-2
-15
+5
+5
-2
+12
+3
+18
+5
+2
-6
+3
-5
-4
+1
-9
+4
-18
+12
-15
+7
+4
+8
-11
+16
+12
+15
+19
-12
-13
-2
-16
-7
+18
-6
-9
-7
-18
-3
-10
+2
-18
-14
+12
-7
+8
+7
+15
-19
-5
-12
-19
-7
-17
+18
-8
-20
+12
-13
-15
-11
-8
+13
+8
+10
+13
+12
-3
+18
+10
-13
+16
+12
-14
-12
-18
+7
+2
+12
+2
+11
-12
+6
-13
-13
-22
-9
+19
+1
+3
-7
-10
-11
+9
-12
-1
+8
+4
+4
-18
-21
+20
-19
+17
-5
-19
+14
+25
-8
-10
-4
-6
+11
+10
+8
+23
+9
-19
+13
+44
+4
+19
-1
+22
+23
+12
+10
+18
+10
+17
-14
-17
-3
-9
-4
-15
+13
+19
+18
+5
-8
+2
-15
+10
+16
+8
-10
-12
+8
+5
-19
+21
+11
-15
-18
-10
+12
-8
-10
-1
-11
+10
+5
+16
+11
+22
-4
+18
-1
+2
+20
+17
+17
-18
-13
-7
+19
-7
-19
+8
+14
-10
+5
-18
+6
-19
-4
-5
+7
-5
-4
+19
-2
+18
+20
-14
-19
-2
+9
-17
+14
+5
+12
-9
+15
+10
+8
+16
-19
+2
-10
-6
-2
+20
+11
+5
-15
+2
-9
+11
+15
+9
+15
-10
-4
+11
+8
-4
+3
-8
+16
+19
+11
-10
-4
+5
-17
-13
+19
+17
+4
+10
+2
+7
+1
-5
-7
-17
-15
+10
+7
+4
+5
+16
-1
-3
+16
-9
-18
+4
-6
-3
+15
+16
-6
-1
+11
+16
+7
+11
-19
+3
+14
+14
-6
+8
-10
-2
-11
+18
+6
+11
+12
-3
+11
-19
-11
-13
-15
-2
-7
-9
-12
+17
-10
-16
+12
-2
+19
+2
-6
-1
-4
-5
+23
+8
-19
+18
-17
+20
-1
-3
+18
+22
-11
-3
-2
+15
-2
-17
+18
+18
+10
+4
-18
-3
-22
-15
-20
-17
-8
+11
+1
-15
+10
+23
+9
+11
-2
+16
-23
+17
-11
+30
+3
+1
-5
+24
-10
+28
-7
+17
-21
-44
-31
+64
+12
+32
+30
+9
+16
-7
+32
+66
-12
+4
+25
-21
+35
-12
+6
+10
+14
-2
+15
+14
+5
+3
+11
+3
-10
+3
-17
+4
-15
+27
+13
+28
-19
-19
+20
+17
+9
+23
+10
+23
-18
-79113}.collect{|num| num.to_i }

second_same_sum(num_array)
