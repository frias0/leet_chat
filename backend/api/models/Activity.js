/**
* Activity.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {
  connection: "leet_chat_db",

  attributes: {
    group: {
      model: "Group",
      required: true
    },
    user: {
      model: "User",
      required: true
    }
  }

};
