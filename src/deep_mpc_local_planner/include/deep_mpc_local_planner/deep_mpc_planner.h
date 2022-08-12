#include <boost/shared_ptr.hpp>
#include <tf2_ros/buffer.h>
#include <dynamic_reconfigure/server.h>
#include <nav_msgs/Odometry.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <nav_core/base_local_planner.h>
#include <base_local_planner/odometry_helper_ros.h>


namespace deep_mpc_local_planner
{
    class DeepMPCPlanner : public nav_core::BaseLocalPlanner
    {
    private:
        tf2_ros::Buffer* tf_;
        costmap_2d::Costmap2DROS* costmap_ros;
        bool _initialized;
        base_local_planner::OdometryHelperRos odom_helper_;
        std::string odom_topic_;
    public:
        DeepMPCPlanner(/* args */);
        ~DeepMPCPlanner();

        void initialize(std::string name, tf2_ros::Buffer *tf,
                        costmap_2d::Costmap2DROS *costmap_ros);

        bool computeVelocityCommands(geometry_msgs::Twist &cmd_vel);

        bool setPlan(const std::vector<geometry_msgs::PoseStamped> &orig_global_plan);

        bool isGoalReached();
    };

    DeepMPCPlanner::DeepMPCPlanner(/* args */)
    {
    }

    DeepMPCPlanner::~DeepMPCPlanner()
    {
    }

}