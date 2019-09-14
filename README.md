# RESTful API Rent Book 📚

![nodeexpressmysql](https://www.restapiexample.com/wp-content/uploads/2017/09/nodejs-mysql-express.png)

> Simple RESTful API using node & express
> Note that this application for backend only
## To get the Node server locally
1. Clone this Repo
2. ```
   cd simple-rest-library
   ```
3. ```sh
   npm install
   ```
4. Set up new file called .env
5. Turn on web server & MYQL
6. Create database called ``` simple-rest-library ``` & import [simple_rest_library.sql](db/simple_rest_library.sql)


## To set up .env file

You can copy this:

```sh
SERVER_PORT = 8888 //you can use other port

DB_HOST = 'localhost'
DB_USER = 'root' 
DB_PASWORD = ''
DB_NAME = 'simple_rest_library'

SECRET_KEY = 'secretkey1412' //you can change secret key 
```

## End Point

You can see all end point  in [End Point](src/routes/index.js)
