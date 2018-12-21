workflow "Build Docker image" {
  on = "push"
  resolves = [
    "Push to docker hub",
  ]
}

action "Docker Login" {
  uses = "actions/docker/login@76ff57a"
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
  needs = ["Build image on master only"]
}

action "Docker build" {
  uses = "actions/docker/cli@76ff57a"
  args = "build -t thojkooi/ci-nodejs ."
  needs = ["Docker Login"]
}

action "Push to docker hub" {
  uses = "actions/docker/cli@76ff57a"
  needs = ["Docker build"]
  args = "push thojkooi/ci-nodejs"
}

action "Build image on master only" {
  uses = "actions/bin/filter@b2bea07"
  args = "branch master"
}
