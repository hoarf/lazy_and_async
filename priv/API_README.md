# API Documentation

  * [AppWeb.LeagueController](#appweb-leaguecontroller)
    * [index](#appweb-leaguecontroller-index)

## AppWeb.LeagueController
### <a id=appweb-leaguecontroller-index></a>index
#### GET /leagues should accept a request for all the leagues
##### Request
* __Method:__ GET
* __Path:__ /leagues

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 2m7b6i6ardbbpdsjvc000042
```
* __Response body:__
```json
[
  {
    "season": "201617",
    "league": "D1",
    "hometeam": "M'gladbach",
    "awayteam": "Darmstadt"
  },
  ...
]
```

#### GET /leagues/id/season/id should return a empty list when no matches
##### Request
* __Method:__ GET
* __Path:__ /leagues/D1/seasons/NOPE

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 2m7b6i6bm4qef1kas4000068
```
* __Response body:__
```json
[]
```
