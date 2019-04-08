# resource "aws_cloudwatch_metric_alarm" "account-billing-alarm" {
#   alarm_name          = "account-billing-alarm"
#   comparison_operator = "GreaterThanOrEqualToThreshold"
#   evaluation_periods  = "1"
#   metric_name         = "EstimatedCharges"
#   namespace           = "AWS/Billing"
#   period              = "21600"
#   statistic           = "Average"
#   threshold           = "60"
#   alarm_description   = "Billing alarm by account"
#   alarm_actions       = ["<your-sns-topic-arn-for-notification>"]
#   dimensions {
#     Currency      = "USD"
#     LinkedAccount = "<your-aws-account-id>"
#   }
# }

