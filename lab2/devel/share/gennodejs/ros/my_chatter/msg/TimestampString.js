// Auto-generated. Do not edit!

// (in-package my_chatter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TimestampString {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.string_type = null;
      this.float_type = null;
    }
    else {
      if (initObj.hasOwnProperty('string_type')) {
        this.string_type = initObj.string_type
      }
      else {
        this.string_type = '';
      }
      if (initObj.hasOwnProperty('float_type')) {
        this.float_type = initObj.float_type
      }
      else {
        this.float_type = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimestampString
    // Serialize message field [string_type]
    bufferOffset = _serializer.string(obj.string_type, buffer, bufferOffset);
    // Serialize message field [float_type]
    bufferOffset = _serializer.float64(obj.float_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimestampString
    let len;
    let data = new TimestampString(null);
    // Deserialize message field [string_type]
    data.string_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [float_type]
    data.float_type = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.string_type.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_chatter/TimestampString';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a024ad7b3a7426fe7302b1422c7a7a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string string_type
    float64 float_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimestampString(null);
    if (msg.string_type !== undefined) {
      resolved.string_type = msg.string_type;
    }
    else {
      resolved.string_type = ''
    }

    if (msg.float_type !== undefined) {
      resolved.float_type = msg.float_type;
    }
    else {
      resolved.float_type = 0.0
    }

    return resolved;
    }
};

module.exports = TimestampString;
