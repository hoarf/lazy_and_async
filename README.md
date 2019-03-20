# League Endpoint

A simple endpoint that exposes CSV parsed data about football leagues.

## Requirements

```
elixir --version                                                                                           [b19f87d]
Erlang/OTP 21 [erts-10.1] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe]

Elixir 1.7.4 (compiled with Erlang/OTP 21)
```

## Development

1. Copy the data file to the folder /priv

2. Install the deps

```mix deps.get```

2. Run tests

```mix test```

3. Start the service at http://localhost:4000

```mix phx.server```

4. Read documentation at doc/index

```mix docs'```

## Deploy

1. Build the image

```make build```

2. Launch 3 service containers load balanced by a haproxy instance:

```docker-compose up -d --scale webapp=3```

## Features

- [x] /leagues route that lists the league and season pairs.
- [x] /leagues/:id/seasons/:id that fetches the result for a specific season pair.
- [x] Document the solution to make it easy to onboard new developers to the project.
- [x] Support for JSON.
- [ ] Support for Proto Buffers.
- [x] Document the HTTP API.
- [x] Create a Dockerfile for the application.
- [x] Create a Docker Compose file for the application with 1 HAProxy instance load balancing
traffic across 3 instances of the application.
- [ ] (Bonus) Create the Kubernetes deployment, service and ingress files required to replace the
above Docker Compose environment.
- [ ] (Bonus) Code instrumentation (e.g. logging, metrics).
