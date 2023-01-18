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
- Add mail configuration and change `QUEUE_CONNECTION` to `database` for mail queuing
- Import dummy_data.sql to mysql
- Then run the command bellow to install Voyager

  ```
  php artisan voyager:install
  ```
- Also run `php artisan queue:work` inorder for the jobs gets processed

  Finally open

  ```
  localhost:8000
  ```
