resource "aws_dynamodb_table" "table" {
  name           = "zooData"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "partitionKey"

  range_key = "sortKey"

  attribute {
    name = "partitionKey"
    type = "S"
  }

  attribute {
    name = "sortKey"
    type = "S"
  }

  tags = {
    Name        = "zoo-data"
    Environment = "dev"
  }
}

resource "aws_dynamodb_table_item" "example-a" {
  table_name = "${aws_dynamodb_table.table.name}"
  hash_key   = "${aws_dynamodb_table.table.hash_key}"
  range_key  = "${aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "partitionKey": {"S": "alert"},
  "sortKey": {"S": "20090401-093000"},
  "eventDescription": {"S": "The king of the jungle dines"},
  "eventName": {"S": "Feeding Time"},
  "exhibitID": {"S": "X001"},
  "status": {"S": "active"}
}
ITEM
}

resource "aws_dynamodb_table_item" "example-b" {
  table_name = "${aws_dynamodb_table.table.name}"
  hash_key   = "${aws_dynamodb_table.table.hash_key}"
  range_key  = "${aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "partitionKey": {"S": "alert"},
  "sortKey": {"S": "20090401-133000"},
  "eventDescription": {"S": "The king of the jungle dines again"},
  "eventName": {"S": "Feeding Time"},
  "exhibitID": {"S": "X001"},
  "status": {"S": "active"}
}
ITEM
}

resource "aws_dynamodb_table_item" "example-c" {
  table_name = "${aws_dynamodb_table.table.name}"
  hash_key   = "${aws_dynamodb_table.table.hash_key}"
  range_key  = "${aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "partitionKey": {"S": "alert"},
  "sortKey": {"S": "20090401-153000"},
  "eventDescription": {"S": "Camels, Desserts in the Desert"},
  "eventName": {"S": "Feeding Time"},
  "exhibitID": {"S": "X005"},
  "status": {"S": "active"}
}
ITEM
}

resource "aws_dynamodb_table_item" "example-d" {
  table_name = "${aws_dynamodb_table.table.name}"
  hash_key   = "${aws_dynamodb_table.table.hash_key}"
  range_key  = "${aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "partitionKey": {"S": "events"},
  "sortKey": {"S": "20090401-100000"},
  "eventDescription": {"S": "Join us at the lion exhibit"},
  "eventName": {"S": "Run for your life Monday!"},
  "exhibitID": {"S": "X001"},
  "status": {"S": "active"}
}
ITEM
}

resource "aws_dynamodb_table_item" "example-e" {
  table_name = "${aws_dynamodb_table.table.name}"
  hash_key   = "${aws_dynamodb_table.table.hash_key}"
  range_key  = "${aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "partitionKey": {"S": "events"},
  "sortKey": {"S": "20090401-110000"},
  "eventDescription": {"S": "Learn how snakes plan vacations"},
  "eventName": {"S": "Snakes on a plane"},
  "exhibitID": {"S": "X002"},
  "status": {"S": "active"}
}
ITEM
}

resource "aws_dynamodb_table_item" "example-f" {
  table_name = "${aws_dynamodb_table.table.name}"
  hash_key   = "${aws_dynamodb_table.table.hash_key}"
  range_key  = "${aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "partitionKey": {"S": "events"},
  "sortKey": {"S": "20090401-120000"},
  "eventDescription": {"S": "Lemmings love nothing more than music and high ledges."},
  "eventName": {"S": "The Lemmings sign-along"},
  "exhibitID": {"S": "X003"},
  "status": {"S": "cancelled"}
}
ITEM
}

resource "aws_dynamodb_table_item" "example-g" {
  table_name = "${aws_dynamodb_table.table.name}"
  hash_key   = "${aws_dynamodb_table.table.hash_key}"
  range_key  = "${aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "partitionKey": {"S": "events"},
  "sortKey": {"S": "20090401-130000"},
  "eventDescription": {"S": "Every time you are near. Because they want feeding."},
  "eventName": {"S": "Why do birds suddenly appear?"},
  "exhibitID": {"S": "X004"},
  "status": {"S": "active"}
}
ITEM
}

resource "aws_dynamodb_table_item" "example-h" {
  table_name = "${aws_dynamodb_table.table.name}"
  hash_key   = "${aws_dynamodb_table.table.hash_key}"
  range_key  = "${aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "partitionKey": {"S": "events"},
  "sortKey": {"S": "20090401-143000"},
  "eventDescription": {"S": "Can you see the microbiome? No, you can't."},
  "eventName": {"S": "It's a small world."},
  "exhibitID": {"S": "X001"},
  "status": {"S": "active"}
}
ITEM
}
