require "pry"
def begins_with_r(array)
   array.all? do |word|
    word.downcase.start_with?("r")
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
    end
end

def first_wa(array)
  array.find do |word|
    word.downcase.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.reject do |word|
     word.class != String
  end
end

def count_elements(array)
hash = {}
 array.each do |ele|
    name = ele[:name]
    if !hash[name]
      hash[name] = 1
    else
      hash[name] += 1
    end
   end
  hash.map do |k, v|
   {name:k, count:v}
    #binding.pry
  end
 end

 # def count_elements(array)
 # hash = {}
 #  array.each {|ele| !hash[ele[:name]] ? hash[ele[:name]] = 1 : hash[ele[:name]] += 1}
 #   hash.map {|k, v| {name:k, count:v}}
 # end

 def merge_data(keys, data)
    i = 0
    results = {}
   while i < keys.length
    binding.pry
    results = keys[i].merge!(data[i][keys[i][:first_name]])
     i += 1
   end
   results
 end
