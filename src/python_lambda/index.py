import botocore.session

session = botocore.session.get_session()
sts = session.create_client("sts", region_name="eu-central-1")


def handler(event, context):
    response = sts.get_caller_identity()
    print(response)
    return event
