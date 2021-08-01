json.id user.id
json.username user.username

json.body do
  json.firstName user.firstname
  json.lastName user.lastname
  json.email user.email
  json.isAdmin user.isAdmin
  json.image user.image
end

json.dates do
  json.created_at user.created_at
  json.updated_at user.updated_at
end
