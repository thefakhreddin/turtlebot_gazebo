#include <deep_mpc_local_planner/deep_mpc_planner.h>
#include <pluginlib/class_list_macros.h>

PLUGINLIB_EXPORT_CLASS(deep_mpc_local_planner::DeepMPCPlannerROS, nav_core::BaseLocalPlanner);

namespace deep_mpc_local_planner
{
    DeepMPCPlannerROS::DeepMPCPlannerROS() : costmap_ros_(NULL), tf_(NULL), initialized_(false) {}
    DeepMPCPlannerROS::DeepMPCPlannerROS(std::string name, tf2_ros::Buffer *tf,
                                         costmap_2d::Costmap2DROS *costmap_ros) : costmap_ros_(NULL), tf_(NULL), initialized_(false)
    {
        initialize(name, tf, costmap_ros);
    }
    DeepMPCPlannerROS::~DeepMPCPlannerROS(){};

    void DeepMPCPlannerROS::initialize(
        std::string name,
        tf2_ros::Buffer *tf,
        costmap_2d::Costmap2DROS *costmap_ros)
    {
        if (!initialized_)
        {
            // ros::NodeHandle private_nh("~/" + name);
            // tf_ = tf;
            // costmap_ros_ = costmap_ros;
            // costmap_ros_->getRobotPose(current_pose_);

            // costmap_2d::Costmap2D *costmap = costmap_ros_->getCostmap();

            // planner_util_.initialize(tf, costmap, costmap_ros_->getGlobalFrameID());

            // // todo initilaze the actual planner here

            // if (private_nh.getParam("odom_topic", odom_topic_))
            // {
            //     odom_helper_.setOdomTopic(odom_topic_);
            // }

            // initialized_ = true;
        }
    }

    bool DeepMPCPlannerROS::setPlan(const std::vector<geometry_msgs::PoseStamped> &orig_global_plan)
    {
        if (!initialized_)
        {
            ROS_ERROR("This planner has not been initialized, please call initialize() before using this planner");
            return false;
        }
        return true;
    }

    bool DeepMPCPlannerROS::computeVelocityCommands(geometry_msgs::Twist &cmd_vel)
    {
        if (!initialized_)
        {
            ROS_ERROR("This planner has not been initialized, please call initialize() before using this planner");
            return false;
        }
        return true;
    }

    bool DeepMPCPlannerROS::isGoalReached()
    {
        if (!initialized_)
        {
            ROS_ERROR("This planner has not been initialized, please call initialize() before using this planner");
            return false;
        }

        return false;
    }
}