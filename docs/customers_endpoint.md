# Customer Endpoints

HTTP Verb | Endpoint          | Description
:--------:|-------------------| -----------
GET       | /customers/:id    | Get a single customer's subscriptions


## Get Single Customer

Return a list of a single customer's subscriptions

`/customers/:id`

### Example Request

`GET http://localhost:3000/api/v1/customers/3`

### Example Response

```
STATUS: 200 OK
```
```
{
    "id": 2,
    "type": "customer",
    "attributes": {
        "subscriptions": [
            {
                "title": "Herbal",
                "status": "active"
            },
            {
                "title": "Variety 1",
                "status": "cancelled"
            },
            {
                "title": "Variety 2",
                "status": "active"
            }
        ]
}
```
