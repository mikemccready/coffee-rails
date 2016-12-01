#React-Rails E-Commerce
E-commerce demo built with Rails API, MySQL database, React and Redux.

### Installation
Make sure Ruby and Rails are installed on your machine
```
ruby -v  
rails -v
```

Clone our project through the command-line
```
git clone https://github.com/mikemccready/react-rails.git  
cd react-rails
```
Install dependencies
```
bundle install  
npm install
```

Create/seed database and migrate schema
```
mysql.server start  
rake db:create  
rake db:migrate  
rake db:seed
```

### Usage
Start our Rails server
```
npm start
```

In another tab, start the React development server
```
npm run dev:hot
```

Navigate to http://localhost:7700/
