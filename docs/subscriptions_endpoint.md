# Subscription Endpoints

HTTP Verb | Endpoint              | Description
:--------:|-----------------------| -----------
POST      | /subscriptions/       | Add a subscription
PATCH     | /subscriptions/:id/   | Cancel a customer's subscription


## Add a Subscription

Allow a customer to add a new subscription

`/subscriptions/`

### JSON Payload

Parameter   | Data Type      | Required (Y/N) | Default        | Notes  
------------|:--------------:|:--------------:|:--------------:|:------:
package_id  | Integer        | Yes            |                |
customer_id | Integer        | Yes            |                |
price       | Integer        | Yes            |                |     
frequency   | Integer        | Yes            |                |


### Example Request

`POST http://localhost:3000/api/v1/subscriptions/`

### Response Status

```
STATUS: 201 Created
```

## Cancel a Subscription

Cancel a customer's subscription

`/subscriptions/:id/`

### JSON Payload

Parameter | Data Type      | Notes  
----------|:--------------:|:------:
status    | Integer        | 0=active, 1=cancelled            


### Example Request

`PATCH http://localhost:3000/api/v1/subscriptions/3/`

### Response Status

```
STATUS: 200 OK
```
