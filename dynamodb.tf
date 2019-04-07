resource "aws_dynamodb_table" "table" {
  name           = "zoo-data"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "eventType"
  range_key      = "eventTime"

  attribute {
    name = "eventType"
    type = "S"
  }

  attribute {
    name = "eventTime"
    type = "S"
  }

#   attribute {
#     name = "eventDescription"
#     type = "S"
#   }

#   attribute {
#     name = "eventName"
#     type = "S"
#   }

#   attribute {
#     name = "exhibitID"
#     type = "S"
#   }

#   attribute {
#     name = "status"
#     type = "S"
#   }

#   ttl {
#     attribute_name = "TimeToExist"
#     enabled        = false
#   }

#   global_secondary_index {
#     name               = "GameTitleIndex"
#     hash_key           = "GameTitle"
#     range_key          = "TopScore"
#     write_capacity     = 10
#     read_capacity      = 10
#     projection_type    = "INCLUDE"
#     non_key_attributes = ["UserId"]
#   }

  tags = {
    Name        = "zoo-data"
    Environment = "dev"
  }
}

# resource "aws_dynamodb_table_item" "example" {
#   table_name = "${aws_dynamodb_table.table.name}"
#   hash_key   = "${aws_dynamodb_table.table.hash_key}"

#   item = <<ITEM
# {
#   "eventType": {"S": "alert"},
#   "eventTime": {"S": "20090401-093000"},
#   "eventDescription": {"S": "The king of the jungle dines"},
#   "eventName": {"S": "Feeding Time"},
#   "exhibitID": {"S": "X001"},
#   "status": {"S": "active"}
# }
# ITEM
# }