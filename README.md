
## Setup the project

- Clone the project with the below command

  ```
  git clone https://github.com/TselotT/laravel.git
  cd laravel
  ```
- Then run the below command

  ```
  composer install
  npm install && npm run dev
  php artisan serve
  ```
- Configure db configuration inside .env file
- Import dummy_data.sql to mysql
- Then run the command bellow to install Voyager

  ```
  php artisan voyager:install
  ```
- Open

  ```
  localhost:8000
  ```
