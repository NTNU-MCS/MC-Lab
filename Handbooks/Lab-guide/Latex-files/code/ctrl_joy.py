import rospy
import numpy as np
from lib import odometry, ps4, u_data
from nav_msgs.msg import Odometry
from std_msgs.msg import Float64MultiArray
from math_tools import * 


### Write your code here ###

def sixaxis2thrust()
    return tau_cmd

def thrust_allocation(tau, )
    return u

### End of custom code ###


def loop():

    """
    Handle all calls to self written functions and publishers in this function. It is called by the 
    script that creates the ROS node and will loop
    """

    button_input = ps4.get_data()          # Get input from PS4 controller
    tau_cmd = sixaxis2thrust(button_input) # Compute generalized forces
    u  = thrust_allocation(tau_cmd)        # Compute thrust distribution
    u_data.publish(u)                      # Publish the computed actuator commands to the CSEI/u topic
    
    