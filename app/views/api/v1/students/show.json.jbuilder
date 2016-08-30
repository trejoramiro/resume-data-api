json.firstName @student.first_name
json.id @student.id
json.lastName @student.last_name
json.email @student.email
json.password @student.password
json.phoneNumber @student.phone_number
json.bio @student.bio
json.linkedInUrl @student.linked_in_url
json.twitterHandle @student.twitter_handle
json.personalUrl @student.personal_url
json.resumeUrl @student.resume_url
json.githubUrl @student.github_url
json.photo @student.photo
json.educations @student.educations.each do |education|
  json.startDate education.start_date
  json.endDate education.end_date
  json.degree education.degree
  json.universityName education.university_name
  json.details education.details
  json.studentId education.student_id
end
json.experiences @student.experiences.each do |experience|
  json.startDate experience.start_date
  json.endDate experience.end_date
  json.jobTitle experience.job_title
  json.companyName experience.company_name
  json.details experience.details
  json.studentId experience.student_id
end
json.skills @student.skills.each do |skill|
  json.name skill.name
  json.studentId skill.student_id
end