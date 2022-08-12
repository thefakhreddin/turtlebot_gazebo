// Auto-generated. Do not edit!

// (in-package rigid2d.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class set_poseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.theta = null;
      this.x = null;
      this.y = null;
    }
    else {
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_poseRequest
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_poseRequest
    let len;
    let data = new set_poseRequest(null);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rigid2d/set_poseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '245ce98f734504fd1235e73576484de3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # sets pose of robot
    # theta (angular position) x/y (position)
    # set_pose_state is true if the new pose service has been activated
    float32 theta
    float32 x
    float32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_poseRequest(null);
    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    return resolved;
    }
};

class set_poseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_pose_state = null;
    }
    else {
      if (initObj.hasOwnProperty('set_pose_state')) {
        this.set_pose_state = initObj.set_pose_state
      }
      else {
        this.set_pose_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_poseResponse
    // Serialize message field [set_pose_state]
    bufferOffset = _serializer.bool(obj.set_pose_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_poseResponse
    let len;
    let data = new set_poseResponse(null);
    // Deserialize message field [set_pose_state]
    data.set_pose_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rigid2d/set_poseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c20de4c0bd76233cf2af89791f066dc5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool set_pose_state
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_poseResponse(null);
    if (msg.set_pose_state !== undefined) {
      resolved.set_pose_state = msg.set_pose_state;
    }
    else {
      resolved.set_pose_state = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_poseRequest,
  Response: set_poseResponse,
  md5sum() { return 'c5432c85aa30571647ef4a6b0e1b56d9'; },
  datatype() { return 'rigid2d/set_pose'; }
};
