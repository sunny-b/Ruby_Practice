contact_datas = [["abc@gmail.com", "555-243-5678", "666 Deadend Dr."], ["123@gmail.com", "555-453-2341", "Hello Dr."]]

contacts = {"Johnny Boy" => {}, "Maggie Mays" => {}}

fields = [:email, :phone, :address]

contacts.each_with_index do |(key, value), idx|
  fields.each do |field|
    value[field] = contact_datas[idx].shift
  end
end

contacts.each_with_index do |(key, value), idx|
  fields.each do |field|
    contact_datas[idx] = value[field]
  end
end

puts "#{contacts}"

puts "#{contact_datas}"