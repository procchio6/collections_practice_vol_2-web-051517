def begins_with_r(array)
  array.all? { |element| element[0] == 'r' }
end

def contain_a(array)
  array.select { |element| element.include?('a') }
end

def first_wa(array)
  array.find { |element| element[0...2] == 'wa' }
end


def remove_non_strings(array)
  array.delete_if { |element| element.class != String }
end

def count_elements(array)
  uniq_array = array.uniq
  uniq_array.map do |element|
    element[:count] = array.count(element)
    element
  end
end

def merge_data(keys, data)
  keys.map do |key|
    data[0].map do |name, attributes|
      if name == key[:first_name]
        key.merge(attributes)
      end
    end.compact
  end.flatten
end

def find_cool(data)
  data.select { |e| e[:temperature] == 'cool' }
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school_name, school_data|
    organized_schools[school_data[:location]] ||= []
    organized_schools[school_data[:location]] << school_name
  end
  organized_schools
end
