# taskManager

# Task Manager Project

This project is a simple Task Manager application built with Go for the backend and HTML/CSS for the frontend. The application allows users to register, log in, and manage their tasks. Admin users have additional privileges to manage all users and tasks.

## Features

- User registration and login (with roles: user/admin).
- CRUD operations for tasks (Create, Read, Update, Delete).
- Simple SQLite database for storing users and tasks.
- Admin panel for managing users and tasks.
- Frontend built with basic HTML and CSS.
- Backend developed using Go with token-based authentication (JWT).
- Unit tests for the backend and Playwright tests for frontend interactions (to be added).

## Technologies Used

- **Backend**: Go (Gin/Echo framework)
- **Frontend**: HTML, CSS
- **Database**: SQLite
- **Testing**:
  - Backend: Go `testing` package (unit tests)
  - Frontend: Playwright (to be added)
- **Version Control**: Git & GitHub
- **CI/CD**: Jenkins (to be added)
- **TestRail Integration** (to be added)

## Project Setup

### Prerequisites

- Go (version 1.19 or higher)
- SQLite3
- Node.js (for future Playwright tests)
- Git

### Cloning the Repository

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/your-username/task-manager-go.git

2. Navigate into the project directory:
    cd task-manager-go
   
Backend Setup

1. Install Go dependencies:

    go mod tidy

2. Initialize SQLite database:

  Create a users.db and tasks.db file in the /db directory.
  Run SQL scripts (to be added later) to create the necessary tables.

3. Start the Go server:

  go run main.go
  
4. The backend API will run on http://localhost:8080.

Frontend Setup

1. Open the index.html file located in the /frontend/templates folder in a web browser.
2. The frontend currently communicates with the Go backend through simple API requests.

Testing

1. Backend Unit Tests: Run the Go unit tests using the command:
   
  go test ./...

Frontend Tests (Playwright): To be added later.

Future Enhancements

User Authentication: JWT token implementation for secure routes.
CI/CD Pipeline: Jenkins pipeline for automated testing and deployment.
TestRail Integration: Sync test results with TestRail.
