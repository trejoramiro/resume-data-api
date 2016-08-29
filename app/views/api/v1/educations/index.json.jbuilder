json.studentId @student.id
json.education @education.each do |education|
  json.educationId education.id
  json.startDate education.start_date
  json.endDate education.end_date
  json.degree education.degree
  json.university education.university_name
  json.details education.details
end
