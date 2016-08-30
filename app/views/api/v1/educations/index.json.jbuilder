json.array! do @all_education do |education|
json.id education.id
json.startDate education.start_date
json.endDate education.end_date
json.degree education.degree
json.university education.university_name
json.details education.details
end
