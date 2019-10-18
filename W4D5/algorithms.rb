def sluggish_octopus(arr)
    outer_max = ""
    inner_max = ""
    arr.each do |string1|
        arr.each do |string2|
            if string1.length > string2.length
                inner_max = string1
            else
                inner_max = string2
            end
        end
        if inner_max.length > outer_max.length
            outer_max = inner_max
        end
    end
    outer_max
end

# def dominant_octopus(arr)
#     if arr.length 
# end

def clever_octopus(arr)
    max_fish = ""
    arr.each do |fish|
        if fish.length > max_fish.length
            max_fish = fish
        end
    end
    max_fish
end

my_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
p sluggish_octopus(my_arr)
p clever_octopus(my_arr)
