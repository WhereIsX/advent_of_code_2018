require 'pry-nav'

test_case = %w(#1 @ 001,003: 4x4
#2 @ 003,001: 4x4
#3 @ 005,005: 2x2)

def claim_doesnt_overlap(elf_claims)

  claims = make_sane(elf_claims)
  fabric = {}


  i = 0
  while i < claims.count

    claim_id = claims[i]
    x_start = claims[i+1].split(",").first
    ## hardcoding
    y_start = claims[i+1].split(",").last[0,3]

    width = claims[i+2].split("x").first
    height = claims[i+2].split("x").last

    fabric_to_mark = fabric_coordinates(x_start, y_start, width, height)
    fabric_to_mark.each {|square_inch| mark_fabric(square_inch, claim_id, fabric)}

    i +=3
  end

  overlaps = fabric.select{ |k,v,|
    binding.pry
    v.count == 1
  }
  puts overlaps
end





def fabric_coordinates(x1, y1, width, height)
  x2 = x1.to_i + width.to_i - 1
  y2 = y1.to_i + height.to_i - 1
  x_range = [*(x1.to_i)..x2].collect {|num| "x" + num.to_s}
  y_range = [*(y1.to_i)..y2].collect {|num| "y" + num.to_s}

  coordinates = []
  y_range.each do |y|
    x_range.each do |x|
      coordinates << x+y
    end
  end
  return coordinates
end


def mark_fabric(coordinates, claim, fabric)
  if fabric[coordinates].nil?
    fabric[coordinates] = [claim]
  else
    fabric[coordinates] << claim
  end
end


def make_sane(elf_claims)
  sane = elf_claims.select {|el| !el.include?("@")}
end

claim_doesnt_overlap(test_case)
# binding.pry
# "hi"
