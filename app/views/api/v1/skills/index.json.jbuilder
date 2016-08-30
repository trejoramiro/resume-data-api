json.studentId @student.id
json.array! @skills.each do |skill|
  json.name skill.name
end
