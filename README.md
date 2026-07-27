# DC-motor-control
DC motor speed control (PID-tuned)

$$
\frac{dR}{dt} = \alpha R\left(1-\frac{R+G}{k}\right) - \beta RG
$$

$$
\frac{dG}{dt} = -\gamma G + \delta G\left(1-\frac{R+G}{k}\right)
$$

See below for the model in Simulink:
![Simulink model print](Simulink_model_print.png)

