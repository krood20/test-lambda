def lambda_handler(event, context):
    print("IN THE LAMBDA")
    print("EVENT")
    print(event)

    resp = {
        "statusCode": 200,
        'headers': { 'Content-Type': 'application/json' },
        "body": event
    }
    print(resp)
    return resp