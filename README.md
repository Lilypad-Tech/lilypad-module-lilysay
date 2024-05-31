# Demo Lilypad Module

This is a "hello world" style demo inspired by the classic [cowsay](https://en.wikipedia.org/wiki/Cowsay) ascii art generator. 

To run this demo you will need lilypad installed into your local development environment, check out the [docs to get started](https://lilypad.team/cli). 

It's important to note the `Dockerfile` in this repository is only here for informational purposes only to see how the [lilysay dockerhub](https://hub.docker.com/repository/docker/lilypadnetwork/lilysay) image is built against the Lilypad template below. 

Once the lilypad CLI is installed, run the following to test out the lilysay module. 

```
lilypad run github.com/lilypad-tech/lilypad-module-lilysay:0.5.1 -i Message='Hello lilypad world'
```

The ascii art image output can also be changed using any of the following, by adding the `-i Image=` input as part of the cli command. 

- `lilyfrog`
- `lilyrocket`
- `lilycorn`
- `lilyduck`
- `lilypad`

For example 

```
lilypad run github.com/lilypad-tech/lilypad-module-lilysay:0.5.1 -i Message='Hello lilypad world' -i Image=lilyfrog
```

Visit the [lilypad documentation](https://lilypad.team/building) to find out more on how to build your own custom lilypad job modules.
