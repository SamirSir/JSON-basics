# parrtial can extaract the furniture details in counter wise:
	json.extract! xyz, :id, :name, :descriptioin, :price, :created_at, :updated_at
	json.url furniture_url(xyz, format: :json)

# all the category of the furniture
# json.string xyz

# to pass the url of current furniture
