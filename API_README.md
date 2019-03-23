# API Documentation

  * [AppWeb.LeagueController](#appweb-leaguecontroller)
    * [index](#appweb-leaguecontroller-index)

## AppWeb.LeagueController
### <a id=appweb-leaguecontroller-index></a>index
#### List all leagues
##### Request
* __Method:__ GET
* __Path:__ /leagues

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 2m7b7bjhmns3mgt5ak000086
```
* __Response body:__
```json
[
  {
    "season": "201617",
    "league": "D1",
    "hometeam": "M'gladbach",
    "awayteam": "Darmstadt"
  }, ...
]
```

#### List all leagues, no matches
##### Request
* __Method:__ GET
* __Path:__ /leagues/D1/seasons/NOPE

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 2m7b7bjh04oav3l6dg000066
```
* __Response body:__
```json
[]
```
