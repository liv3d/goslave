# goslave

A simple Jenkins goslave using Swarm. Best launched using:

```
  docker run -d \
   -e JENKINS_USERNAME='username_or_email'\
   -e JENKINS_APIKEY='getapikey'\
   --link jenkins-ci:hostname.of.jenkins \
   goslave
```

The hostname is important so that Swarm can connect up the slave without using the public hostname. This allows you to keep Jenkins in a single host.
