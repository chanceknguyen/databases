var db = require('../db');

module.exports = {
  getAll: function (callback) {
    // roomname, text, username
    var queryString = 'SELECT messages.id, messages.roomname, messages.text, users.username from messages\
                       left outer join users on (messages.userid = users.id) \
                       order by messages.id desc';
    db.query(queryString, function(err, results) {
      callback(err, results);
    });

  }, // a function which produces all the messages
  create: function (params, callback) {
    var queryString = 'insert into messages( text, userid, roomname) \
                       values(?, (select id from users where username = ? limit 1). ?)';
    db.query(queryString, params, function(err, results) {
      callback(err, results);
    });

  } // a function which can be used to insert a message into the database
};
