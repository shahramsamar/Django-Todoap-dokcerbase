# Django TodoApp Docker-Based

A Django-based To-Do application with Docker integration. This project demonstrates how to deploy a Django app in a Docker container and manage application dependencies and services using Docker Compose. It provides a simple To-Do list functionality, allowing users to create, read, update, and delete tasks.

![Alt](https://repobeats.axiom.co/api/embed/eabe6508a91fa38b4ace0060919094363916f544.svg "Repobeats analytics image")

## Features

- **Task Management**: Create, update, delete, and view tasks in the to-do list.
- **User Authentication**: Users can register and log in to manage their tasks securely.
- **Docker Integration**: The project is fully containerized using Docker and Docker Compose.
- **SQLite Database**: Uses SQLite as the default database for simplicity (can be switched to PostgreSQL or MySQL if needed).
- **Admin Interface**: Django's built-in admin interface for managing tasks and users.
  
## Requirements

- **Python 3.x**
- **Docker**: For containerizing the application.
- **Docker Compose**: For defining and running multi-container Docker applications.
  
### Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/shahramsamar/Django-Todoap-dokcerbase.git
    cd Django-Todoap-dokcerbase
    ```

2. **Build the Docker Containers**:

    Use Docker Compose to build and start the application’s services:

    ```bash
    docker-compose up --build
    ```

    This command will:
    - Build the Docker image for the Django app.
    - Create and start the container for the Django app.
    - Set up the database using Docker.

3. **Apply Migrations**:

    After building the Docker containers, run the migrations to set up the database:

    ```bash
    docker-compose run web python manage.py migrate
    ```

4. **Create a Superuser (Admin)**:

    To access the Django admin interface, create a superuser:

    ```bash
    docker-compose run web python manage.py createsuperuser
    ```

5. **Access the Application**:

    After setting up the application, you can access it at:

    - The To-Do list application: `http://localhost:8000/`
    - The Django Admin Interface: `http://localhost:8000/admin/`

### How to Use

- **Login / Register**: Create an account or log in with an existing user to manage your tasks.
- **Create Tasks**: Users can add new tasks, mark them as completed, or delete them.
- **View Tasks**: The To-Do list will display all tasks with options to update or remove them.
  
### Project Structure

- `todo/`: The main app for managing the to-do list tasks.
    - `models.py`: Contains the Task model that stores each task's information.
    - `views.py`: Handles the views for displaying tasks, forms for task creation, and updating tasks.
    - `urls.py`: Maps the URL paths to the corresponding views for tasks.
    - `templates/`: Stores the HTML templates for rendering the views.
        - `task_list.html`: Displays all tasks in the list.
        - `task_form.html`: Used for creating and editing tasks.
    - `static/`: Contains static files like CSS, images, and JavaScript.
  
- `Dockerfile`: Defines the Docker image for the Django app.
- `docker-compose.yml`: Defines services, networks, and volumes for the project using Docker Compose.
- `requirements.txt`: Lists Python dependencies for the Django app (e.g., Django, Django REST Framework).
- `manage.py`: The Django project management script to run commands like migrations, creating superuser, etc.

### Contributing

Feel free to fork the project and submit pull requests for new features, improvements, or bug fixes.

### License

This project is open-source and available for educational purposes.

---

This `README.md` provides clear instructions for setting up, using, and contributing to the **Django TodoApp Docker-Based** project, demonstrating how to integrate Docker and Docker Compose into a Django project for easy deployment and management.
