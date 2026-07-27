# DC-motor-control
DC motor speed control (PID-tuned)

$$
\frac{\omega(s)}{V(s)} = \frac{K_t}{(L+R)(J+B)+K_e K_t}
$$

$$
\frac{dG}{dt} = -\gamma G + \delta G\left(1-\frac{R+G}{k}\right)
$$

See below for the model in Simulink:
![Simulink model print](Simulink_model_print.png)

