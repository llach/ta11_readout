int8 TRAJECTORY_EXEC=0
int8 TRANSITION=0
int8 FORCE_CTRL=0

int8 NO_CONTACT=0
int8 LOST_CONTACT=1
int8 GOT_CONTACT=2 
int8 IN_CONTACT=3 
int8 GOAL=4 
int8 VIOLATED=5

# debug info for TA11 controller
std_msgs/Header header

float64[] k
float64[] f
float64[] q
float64[] delta_F
float64[] delta_q
float64[] delta_q_T
float64[] q_T
float64[] v_des
float64[] q_des

float64[] noise_threshold
float64[] dc_threshold
float64[] max_forces
float64[] error_integral
float64[] joint_times

int8 c_state
int8[] joint_states

float64 F_diff
float64 F_add
float64 O_T
float64 O_t
float64 delta_O
float64 F_abs

float64 cos_grav
float64 grav_drift
float64 F_diff_corr
float64 F_add_corr