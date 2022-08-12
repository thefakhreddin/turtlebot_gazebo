// Auto-generated. Do not edit!

// (in-package nuturtle_robot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class startRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type startRequest
    // Serialize message field [direction]
    bufferOffset = _serializer.string(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type startRequest
    let len;
    let data = new startRequest(null);
    // Deserialize message field [direction]
    data.direction = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.direction);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nuturtle_robot/startRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '326e9417def5db9a05a2704a4d8de15e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # set the direction of the rotation
    # direction is either clockwise or counter-clockwise
    # set_pose_state is true when the direction is established 
    string direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new startRequest(null);
    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = ''
    }

    return resolved;
    }
};

class startResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction_set = null;
    }
    else {
      if (initObj.hasOwnProperty('direction_set')) {
        this.direction_set = initObj.direction_set
      }
      else {
        this.direction_set = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type startResponse
    // Serialize message field [direction_set]
    bufferOffset = _serializer.bool(obj.direction_set, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type startResponse
    let len;
    let data = new startResponse(null);
    // Deserialize message field [direction_set]
    data.direction_set = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nuturtle_robot/startResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a608a39707d4f244245bf8fb8322051c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool direction_set
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new startResponse(null);
    if (msg.direction_set !== undefined) {
      resolved.direction_set = msg.direction_set;
    }
    else {
      resolved.direction_set = false
    }

    return resolved;
    }
};

module.exports = {
  Request: startRequest,
  Response: startResponse,
  md5sum() { return 'e743aa0e8f3e06b0783c4c788c47711b'; },
  datatype() { return 'nuturtle_robot/start'; }
};
