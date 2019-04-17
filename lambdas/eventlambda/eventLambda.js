'use strict';

var AWS = require('aws-sdk'),
  // documentClient = new AWS.DynamoDB.DocumentClient();
  dynamodb = new AWS.DynamoDB();

exports.getExhibits = function(event, context, callback) {
  // var params = {
  //   Key: {
  //     ExhibitID: {
  //       S: 'XOO1'
  //     }
  //   },
  //   TableName: process.env.TABLE_NAME
  // };
  // documentClient.scan(params, function(err, data) {
  //   if (err) {
  //     callback(err, null);
  //   } else {
  //     callback(null, data.Items);
  //   }
  // });

  var params = {
    KeyConditionExpression: 'partitionKey = :key',
    ExpressionAttributeNames: {
      '#id': 'exhibitID'
    },
    FilterExpression: '#id = :exhibit',
    ExpressionAttributeValues: {
      ':key': 'events',
      ':exhibit': 'X001'
    },
    TableName: process.env.TABLE_NAME
  };
  documentClient.query(params, function(err, data) {
    if (err) callback(err, null);
    else callback(null, data.Items);
  });

  // var params = {
  //   ExpressionAttributeValues: {
  //     ':key': 'events'
  //   },
  //   KeyConditionExpression: 'partitionKey = :key',
  //   TableName: process.env.TABLE_NAME
  // };
  // dynamodb.query(params, function(err, data) {
  //   if (err) callback(err, null);
  //   else callback(null, data.Items);
  // });
};
