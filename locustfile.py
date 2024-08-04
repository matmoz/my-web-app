from locust import HttpUser, TaskSet, task, between

class UserBehavior(TaskSet):
    @task
    def index(self):
        self.client.get("/")

    @task(2)
    def another_endpoint(self):
        self.client.get("/another-endpoint")

class WebsiteUser(HttpUser):
    tasks = [UserBehavior]
    wait_time = between(0.5, 1)  # Reduce wait time for more aggressive load

