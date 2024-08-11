# REPORT SamplingAndReconstruction

>
> Performer: **Nguyen Tien Dai**
>
> Digital Signal Processing Course

### Index
[I. Chapter 1: Introduce](#I)

[1. Subject Project](#DoAnMonHoc)

[2. Project Goal](#MucTieuDoAn)

[II. Chapter 2: Theoretical Basis](#II)

[1. Sampling](#LayMau)

[1.1 Notion](#KhaiNiem)

[1.2 Sampling Definition](#DinhNghiaLayMauNquist-Shannon)

[2. Aliasing Phenomenon](#ChongLanPho)

[3. Signal Reconstruction](#KhoiPhucTinHieu)

[III. Chapter 3: Matlab Simulation And Jupyter Notebook](#III)

[1. Matlab Simulink](#3.1)

[2. Jupyter Notebook](#3.2)


<a name = "I"></a>
# I. Chapter 1: Introduction
<a name = "DoAnMonHoc"></a>
# 1. Subject Project
In the field of digital signal processing, the process of sampling and signal recovery plays a key role in the transformation and process real-world continuous signals into binary number form that
computers can process. Steps This is not only necessary for efficient signal storage and transmission, but also to ensure that the original information is kept complete. (1) Sampling the signal converts
the continuous signal (analog) into a discrete signal (digital) by the ADC. (2) Signal restoration is the opposite process compared to sampling → converting discrete (digital) signals to to a continuous
(analog) form through DAC. The above two processes apply a lot to life devices such as: digital audio and video, digital communication, photo processing...
<a name = "MucTieuDoAn"></a>
# 2. Subject Goal
- Understand the theory of sampling and signal recovery → the Nyquist-Shannon sampling theorem. 
- Design and perform a simulation of the sampling and signal recovery process → using Matlab Simulink. 
- Analysis and evaluation of simulation results → Comparison and evaluation of original and post-recovery signals to check accuracy.

<a name = "II"></a>
# II. Chapter 2: Theoretical basis
<a name = "LayMau"></a>
# 1. Sampling
<a name = "KhaiNiem"></a>
# 1.1 Notion
Sampling is the process of converting a continuous signal over time (analog) into a discrete (digital) signal equal to how to get the values of the signal to create regular intervals.
<a name = "DinhNghiaLayMauNyquist-Shannon"></a>
# 1.2 Sampling Definition
The sampling theorem ensures that the analog signal can be fully recovered as long as the sampling rate is at least twice as large as the highest frequency component of the sampled condenser signal. 
Fs ≥ 2Fmax 
- Fs → sampling frequency 
- Fmax → the highest frequency of the signal
### Version Simulation
==> Version matlab R2023a.
