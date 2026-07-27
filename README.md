# DC-motor-control
DC motor speed control (PID-tuned)

See below for the model in Simulink:
![Simulink model print](Simulink_model_print.png)

The transfer function is given by:

$$
\frac{\Omega(s)}{V(s)} = \frac{K_t}{(L+R)(J+B)+K_e K_t}
$$
