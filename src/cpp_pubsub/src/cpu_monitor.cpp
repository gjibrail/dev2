#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/float64.hpp"
#include <fstream>

class CPUMonitor : public rclcpp::Node
{
public:
  CPUMonitor() : Node("cpu_monitor")
  {
    publisher_ = this->create_publisher<std_msgs::msg::Float64>("cpu_utilization", 10);
    timer_ = this->create_wall_timer(std::chrono::seconds(2), std::bind(&CPUMonitor::timer_callback, this));
  }

private:
  void timer_callback()
  {
    std_msgs::msg::Float64 msg;
    msg.data = get_cpu_utilization();
    publisher_->publish(msg);
  }

double get_cpu_utilization()
{
    std::ifstream stat_file("/proc/stat");
    std::string line;
    double user_time, nice_time, system_time, idle_time;
    if (std::getline(stat_file, line))
    {
        std::istringstream linestream(line);
        std::string name;
        linestream >> name;
        if (name == "cpu")
        {
            linestream >> user_time >> nice_time >> system_time >> idle_time;
            double cpu_utilization = 1.0 - (idle_time / (user_time + nice_time + system_time + idle_time));
            std::cout << "CPU Utilization: " << cpu_utilization * 100 << "%" << std::endl;
            return cpu_utilization;
        }
    }
    return -1.0;
}

  rclcpp::TimerBase::SharedPtr timer_;
  rclcpp::Publisher<std_msgs::msg::Float64>::SharedPtr publisher_;
};

int main(int argc, char * argv[])
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<CPUMonitor>());
  rclcpp::shutdown();
  return 0;
}
