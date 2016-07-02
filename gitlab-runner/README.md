Fully dockerized Gitlab Runner
------------------------------
This image was forked from [tobilg/gitlab-runner/simple-gitlab-runner](https://github.com/tobilg/gitlab-runner). It was
 updated to reflect the current `gitlab-ci-multi-runner` command syntax, as well as to contain some further instructions.

It registers and runs a single gitlab runner. If you need multiple runners, either supply the `CONCURRENT` environment 
variable (with an integer value, e.g. 4), or simply start multiple containers.

The usage examples below focus on running this container with the necessary configuration to let you
spawn docker containers from inside it.

Note that we share the [docker.sock instead of using some dind image](https://gitlab.com/gitlab-org/gitlab-ce/issues/17769). 
Please read [this blog post](https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/) to understand 
our motivations to avoid Docker in Docker strategy.

Be aware that images are built in the host. This is great because it allows you to share the images cache and run your 
builds faster. Take care to you always include dynamic tags to your inner docker builds so that parallel builds don't conflict.

Also take note that if you use docker-compose in your tests, you would need to ensure that concurrent builds don't 
conflict. Actually, gitlab ci automatically puts your current build in a folder with the name of your project. 
[Docker Compose](https://docs.docker.com/compose/) will use this folder name to name your images and containers. 
If you run multiple containers of this image on the same host and you want to use docker-compose, you will need to find 
a way to isolate the builds. 

Please feel free to contribute on the subject if you have an idea.

## Manual usage example

```
docker run -d --name gitlab-runner \
  -v /usr/bin/docker:/usr/bin/docker \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /opt/gitlab-runner:/opt/gitlab-runner \
  sandrokeil/gitlab-runner \
  -u 'YOUR_CI_URL' \
  -r 'YOUR_REGISTRATION_TOKEN' \
  --name 'YOUR_RUNNER_NAME' \
  --tag-list 'YOUR_COMMA_SEPARATED_TAGS' \
  --executor 'shell'
```

All the command arguments are proxied to the `gitlab-runner register -n`. For more information on available options check 
the [official documentation of the gitlab runner](https://gitlab.com/gitlab-org/gitlab-ci-multi-runner/tree/master/docs).


## Volumes explanation

Mount the docker socket so that builds can spawn docker containers through the host's docker.
```
/var/run/docker.sock:/var/run/docker.sock
```

Mount the work directory. The directory **must be the same on the host and inside the container**, so that new containers can mount volumes from the current build using `pwd` for example.

```
/opt/gitlab-runner:/opt/gitlab-runner
```

We actually do no recommend mounting the config directory /etc/gitlab-runner as this container is intended to be 
ephemeral and run a single runner.

## Docker Compose example

This is a full example of using GitLab and GitLab CI. You have only to replace the GitLab token in the `gitlab-runner` command.
Take a look at this [GitLab Docker Compose example](https://github.com/sameersbn/docker-gitlab).

```
version: '2'
services:

  gitlab:
    image: 'gitlab/gitlab-ce:8.9.1-ce.1'
    hostname: 'gitlab'
    environment:
      GITLAB_OMNIBUS_CONFIG: |
        external_url 'http://gitlab'
        # Add any other gitlab.rb configuration here, each on its own line
    ports:
      - '80:80'
      - '443:443'
      - '22:22'
    volumes:
      - './data/config:/etc/gitlab'
      - './data/logs:/var/log/gitlab'
      - './data/source:/var/opt/gitlab'
    networks:
      - frontend
      - backend

  gitlab-runner:
    image: sandrokeil/gitlab-runner
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - /opt/gitlab-runner:/opt/gitlab-runner
    command: ["--executor", "shell", "-u", "http://gitlab/ci", "-r", "1ViYmFP9VFvibW6nyj9C"]
    networks:
      - backend

#
# [ networks definition ]
#
networks:
  default:
    driver: bridge
  frontend:
    driver: bridge
  backend:
    driver: bridge
```
