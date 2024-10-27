# User Authentication API

This is a Ruby on Rails API application for user authentication, featuring user registration and login functionalities.

## Deployed Link

The application is deployed at: [https://tech-x-back-end.onrender.com](https://tech-x-back-end.onrender.com)

## Ruby Version

This application is built with Ruby 3.x. Please ensure you have the correct version installed.

## System Dependencies

- Ruby (3.3.1 or higher)
- Rails (7.1.4.2 or higher)
-  SQLite (for development and testing)

## Configuration

1. Clone the repository:
   ```bash
   git clone https://github.com/PerezAbel/Tech-x-Back-End
   cd Tech-x-Back-End

2. Install dependancies:
   ```bash
   bundle install

3. Setup database:
   ```bash
   rails db:create
   rails db:migrate

4. Database initialization:
   ```bash
   rails db:seed

## API Endpoints

### User Registration
- **POST /signup**
  - **Description:** Creates a new user.
  - **Request Body:**
    ```json
    {
      "user": {
        "username": "your_username",
        "email": "your_email@example.com",
        "password": "your_password",
        "password_confirmation": "your_password"
      }
    }
    ```
  - **Response:**
    - **201 Created:** Returns the created user object.
    - **422 Unprocessable Entity:** Returns validation errors.

### User Login
- **POST /login**
  - **Description:** Authenticates a user and initiates a session.
  - **Request Body:**
    ```json
    {
      "email": "your_email@example.com",
      "password": "your_password"
    }
    ```
  - **Response:**
    - **200 OK:** Returns the authenticated user object.
    - **401 Unauthorized:** Returns an error message for invalid credentials.

### User Logout
- **DELETE /logout**
  - **Description:** Ends the user session.
  - **Response:**
    - **200 OK:** Returns a success message.

### Get Current User
- **GET /me**
  - **Description:** Retrieves the current logged-in user's information.
  - **Response:**
    - **200 OK:** Returns the user object if logged in.
    - **404 Not Found:** Returns an error if no user is found.

## Services

This application does not currently utilize job queues, cache servers, or search engines.

## Deployment Instructions

For deploying this application, you can use platforms like Render, Heroku, or any other cloud service that supports Rails applications. Ensure your environment variables and database configurations are set appropriately.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
