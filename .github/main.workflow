workflow "New workflow" {
  on = "push"
  resolves = ["Push to docker hub"]
}

action "Docker Login" {
  uses = "actions/docker/login@76ff57a"
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
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
