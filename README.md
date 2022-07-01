# README
Add your authorization key

```
# create an `.env` file and add the api key
AUTHORIZER_API_KEY=
```

Update `config/initializers/aserto.rb` with the specific config for your policy.

```bash
# start the container
❯ docker-compose up --build

# setup an user
❯ curl -v --request POST \
  --url http://localhost:3000/api/users \
  --header 'Content-Type: application/json' \
  --data '{
  "user": {
    "email": "rick@the-citadel.com",
    "password": "test123"
  }
}'

# login
curl -v --request POST \
  --url http://localhost:3000/api/auth/login \
  --header 'Content-Type: multipart/form-data' \
  --form email=rick@the-citadel.com \
  --form password=test123

# use the login token to list users
curl -v --request GET \
  --url http://localhost:3000/api/users \
  --header 'Authorization: #MY_TOKEN' \
  --header 'Content-Type: application/json'
```
