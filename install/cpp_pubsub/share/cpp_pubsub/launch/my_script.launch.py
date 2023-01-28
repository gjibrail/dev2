from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='cpp_pubsub',
            node_namespace='talker',
            node_executable='talker',
            node_name='pub'
        ),
        Node(
            package='cpp_pubsub',
            node_namespace='listener',
            node_executable='listener',
            node_name='sub'
        )
    ])