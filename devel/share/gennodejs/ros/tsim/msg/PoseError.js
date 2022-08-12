// Auto-generated. Do not edit!

// (in-package tsim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PoseError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_error = null;
      this.y_error = null;
      this.theta_error = null;
    }
    else {
      if (initObj.hasOwnProperty('x_error')) {
        this.x_error = initObj.x_error
      }
      else {
        this.x_error = 0.0;
      }
      if (initObj.hasOwnProperty('y_error')) {
        this.y_error = initObj.y_error
      }
      else {
        this.y_error = 0.0;
      }
      if (initObj.hasOwnProperty('theta_error')) {
        this.theta_error = initObj.theta_error
      }
      else {
        this.theta_error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseError
    // Serialize message field [x_error]
    bufferOffset = _serializer.float32(obj.x_error, buffer, bufferOffset);
    // Serialize message field [y_error]
    bufferOffset = _serializer.float32(obj.y_error, buffer, bufferOffset);
    // Serialize message field [theta_error]
    bufferOffset = _serializer.float32(obj.theta_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseError
    let len;
    let data = new PoseError(null);
    // Deserialize message field [x_error]
    data.x_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_error]
    data.y_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta_error]
    data.theta_error = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tsim/PoseError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2b1656b3ae7e47d072bbd7d5734d5a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # absolute value of the x error
    float32 x_error
    
    # absolute value of the x error
    float32 y_error
    
    # absolute value of the angular error
    float32 theta_error
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseError(null);
    if (msg.x_error !== undefined) {
      resolved.x_error = msg.x_error;
    }
    else {
      resolved.x_error = 0.0
    }

    if (msg.y_error !== undefined) {
      resolved.y_error = msg.y_error;
    }
    else {
      resolved.y_error = 0.0
    }

    if (msg.theta_error !== undefined) {
      resolved.theta_error = msg.theta_error;
    }
    else {
      resolved.theta_error = 0.0
    }

    return resolved;
    }
};

module.exports = PoseError;
