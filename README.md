# RH OP10 PROCESS API (rh-op10-process-api)


##Release Notes

###1.0.0
- Initial Release


##Postman Collection
There is a Postman collection in `src/test/resources/postman` that has requests for all of the endpoints in the application.

The collection requires the environment to have these variables configured:
- `env` - the name of the environment to send the request to (dev, prod)
- `clientId` - the client id to use for each request - comes from the client application in Anypoint Exchange
- `clientSecret` - the client secret to use for each request - comes from the client application in Anypoint Exchange