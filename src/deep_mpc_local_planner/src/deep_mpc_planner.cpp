#include <deep_mpc_local_planner/deep_mpc_planner.h>
#include <pluginlib/class_list_macros.h>

PLUGINLIB_EXPORT_CLASS(deep_mpc_local_planner::DeepMPCPlanner, nav_core::BaseLocalPlanner);

namespace deep_mpc_local_planner
{
    void DWAPlannerROS::initialize(
        std::string name,
        tf2_ros::Buffer *tf,
        costmap_2d::Costmap2DROS *costmap_ros)
    {
        if (!_initialized)
        {
            ros::NodeHandle private_nh("~/" + name);
            
        }
    }
}

void DWAPlannerROS::initialize(
    std::string name,
    tf2_ros::Buffer *tf,
    costmap_2d::Costmap2DROS *costmap_ros)