# API Documentation

  * [AppWeb.LeagueController](#appweb-leaguecontroller)
    * [index](#appweb-leaguecontroller-index)

## AppWeb.LeagueController
### <a id=appweb-leaguecontroller-index></a>index
#### GET /leagues accepts a request for all leagues
##### Request
* __Method:__ GET
* __Path:__ /leagues

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 2m7fihe1mk4i71kas40000b5
```
* __Response body:__
```json
{
  "total_pages": 119,
  "total_entries": 2370,
  "page_size": 20,
  "page_number": 1,
  "entries": [
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "M'gladbach",
      "awayteam": "Darmstadt"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Ingolstadt",
      "awayteam": "Schalke 04"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Hoffenheim",
      "awayteam": "Augsburg"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Hertha",
      "awayteam": "Leverkusen"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Hamburg",
      "awayteam": "Wolfsburg"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "FC Koln",
      "awayteam": "Mainz"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Ein Frankfurt",
      "awayteam": "RB Leipzig"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Dortmund",
      "awayteam": "Werder Bremen"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Bayern Munich",
      "awayteam": "Freiburg"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Wolfsburg",
      "awayteam": "M'gladbach"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Werder Bremen",
      "awayteam": "Hoffenheim"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Schalke 04",
      "awayteam": "Hamburg"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "RB Leipzig",
      "awayteam": "Bayern Munich"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Mainz",
      "awayteam": "Ein Frankfurt"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Leverkusen",
      "awayteam": "FC Koln"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Freiburg",
      "awayteam": "Ingolstadt"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Darmstadt",
      "awayteam": "Hertha"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Augsburg",
      "awayteam": "Dortmund"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Hamburg",
      "awayteam": "Mainz"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Freiburg",
      "awayteam": "Schalke 04"
    }
  ]
}
```

#### GET /leagues accepts page as a query param
##### Request
* __Method:__ GET
* __Path:__ /leagues?page=2

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 2m7fihe0lct76b65tg000058
```
* __Response body:__
```json
{
  "total_pages": 119,
  "total_entries": 2370,
  "page_size": 20,
  "page_number": 2,
  "entries": [
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "M'gladbach",
      "awayteam": "Augsburg"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Ingolstadt",
      "awayteam": "Leverkusen"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Hertha",
      "awayteam": "RB Leipzig"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Ein Frankfurt",
      "awayteam": "Wolfsburg"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Dortmund",
      "awayteam": "Hoffenheim"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Bayern Munich",
      "awayteam": "Darmstadt"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "FC Koln",
      "awayteam": "Werder Bremen"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Hoffenheim",
      "awayteam": "Ein Frankfurt"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Augsburg",
      "awayteam": "Hamburg"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Wolfsburg",
      "awayteam": "Bayern Munich"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Werder Bremen",
      "awayteam": "Hertha"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "RB Leipzig",
      "awayteam": "Ingolstadt"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Mainz",
      "awayteam": "M'gladbach"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Dortmund",
      "awayteam": "FC Koln"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Darmstadt",
      "awayteam": "Freiburg"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Leverkusen",
      "awayteam": "Schalke 04"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Schalke 04",
      "awayteam": "RB Leipzig"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Freiburg",
      "awayteam": "Leverkusen"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "M'gladbach",
      "awayteam": "Dortmund"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Ingolstadt",
      "awayteam": "Werder Bremen"
    }
  ]
}
```

#### GET /leagues/id/season/id accepts a request with league and season params
##### Request
* __Method:__ GET
* __Path:__ /leagues/D1/seasons/201617

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 2m7fihe1kvsjddsjvc000056
```
* __Response body:__
```json
{
  "total_pages": 16,
  "total_entries": 306,
  "page_size": 20,
  "page_number": 1,
  "entries": [
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "M'gladbach",
      "awayteam": "Darmstadt"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Ingolstadt",
      "awayteam": "Schalke 04"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Hoffenheim",
      "awayteam": "Augsburg"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Hertha",
      "awayteam": "Leverkusen"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Hamburg",
      "awayteam": "Wolfsburg"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "FC Koln",
      "awayteam": "Mainz"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Ein Frankfurt",
      "awayteam": "RB Leipzig"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Dortmund",
      "awayteam": "Werder Bremen"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Bayern Munich",
      "awayteam": "Freiburg"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Wolfsburg",
      "awayteam": "M'gladbach"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Werder Bremen",
      "awayteam": "Hoffenheim"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Schalke 04",
      "awayteam": "Hamburg"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "RB Leipzig",
      "awayteam": "Bayern Munich"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Mainz",
      "awayteam": "Ein Frankfurt"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Leverkusen",
      "awayteam": "FC Koln"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Freiburg",
      "awayteam": "Ingolstadt"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Darmstadt",
      "awayteam": "Hertha"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Augsburg",
      "awayteam": "Dortmund"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Hamburg",
      "awayteam": "Mainz"
    },
    {
      "season": "201617",
      "league": "D1",
      "hometeam": "Freiburg",
      "awayteam": "Schalke 04"
    }
  ]
}
```

#### GET /leagues/id/season/id accepts page as a query param
##### Request
* __Method:__ GET
* __Path:__ /leagues/D1/seasons/NOPE?page=3

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 2m7fihe1s4d118l4t4000076
```
* __Response body:__
```json
{
  "total_pages": 0,
  "total_entries": 0,
  "page_size": 20,
  "page_number": 3,
  "entries": []
}
```

#### GET /leagues/id/season/id returns ok even when there is not matching league
##### Request
* __Method:__ GET
* __Path:__ /leagues/D1/seasons/NOPE

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 2m7fihe1r6h0nrq97c000066
```
* __Response body:__
```json
{
  "total_pages": 0,
  "total_entries": 0,
  "page_size": 20,
  "page_number": 1,
  "entries": []
}
```

