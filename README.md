# CowboyTester

Minimal app to demonstrate the behavior of cowboy killing processes off mid execution.

## Running it

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `MIX_ENV=prod mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

After doing a couple of "normal" requests make a request and in browser and cancel it by clicking the X on the reload symbol while the request is in progress (you have 5 seconds to do this).

Here is some example output:

```
18:58:59.414 [info] Running CowboyTesterWeb.Endpoint with cowboy 2.9.0 at :::4000 (http)
18:58:59.426 [info] Access CowboyTesterWeb.Endpoint at https://example.com
19:47:58.227 request_id=Fzi2q97y3bMQlCgAAAHB [info] GET /
IT HAPPENED
19:48:03.244 request_id=Fzi2q97y3bMQlCgAAAHB [info] Sent 200 in 5067ms
19:50:57.564 request_id=Fzi21gjs5ESs_McAAAAF [info] GET /
IT HAPPENED
19:51:02.517 request_id=Fzi21gjs5ESs_McAAAAF [info] Sent 200 in 5000ms
19:51:07.643 request_id=Fzi22Gd-hPEtaSkAAAAD [info] GET /
19:51:17.278 request_id=Fzi22qtZsU0j5J0AAAAj [info] GET /
19:51:31.014 request_id=Fzi23eYU2IPHtsQAAAAl [info] GET /
IT HAPPENED
19:51:36.009 request_id=Fzi23eYU2IPHtsQAAAAl [info] Sent 200 in 5043ms
```

You can note that for a couple of requests it prints the "IT HAPPENED" message and logs the request result. The ones in the middle where it didn't are the requests where I aborted it. This means the process is killed mid execution.

* log leve debug didn't reveal more
* Trapping the exit of the process also didn't lead to more logs
