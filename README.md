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

[1.1 SamplingNotion](#KhaiNiemLayMau)

[1.2 Sampling Definition](#DinhNghiaLayMauNquist-Shannon)

[2. Aliasing Phenomenon](#ChongLanPho)

[2.1 AliasingNotion](#KhaiNiemAliasing)

[2.2 Causes of Aliasing](#NguyenNhan)

[2.3 Aliasing's Influence](#AnhHuong)

[2.4 Prevention of Aliasing](#NganChan)

[3. Signal Reconstruction](#KhoiPhucTinHieu)

[3.1 Zero-Order-Hold Interpolation](#ZOH)

[3.2 First-Order-Hold Interpolation](#FOH)

[3.3 Restore Shape](#KhoiPhucHinhDang)

[III. Chapter 3: Matlab Simulation And Jupyter Notebook](#III)

[1. Matlab Simulation](#3.1)

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

![Block Diagram of Digital Signal Processing](https://scontent.fsgn5-14.fna.fbcdn.net/v/t1.15752-9/453478053_1674141270076645_1036128724949355575_n.png?_nc_cat=101&ccb=1-7&_nc_sid=9f807c&_nc_ohc=6v4MoBsVOrcQ7kNvgFFOcOg&_nc_ht=scontent.fsgn5-14.fna&oh=03_Q7cD1QFWGIGiYPagQZruFhzvu8rdLe2lCQg732siyTmM7B8wrQ&oe=66E37D50)

The process of converting analog signals to digital signals through an ADC occurs through the following steps:
* Sampling
* Quantising
* Coding
<a name = "LayMau"></a>
# 1. Sampling
<a name = "KhaiNiemLayMau"></a>
# 1.1 Notion
Sampling is the process of converting a continuous signal over time (analog) into a discrete (digital) signal equal to how to get the values of the signal to create regular intervals.

![Sampling Model](https://scontent.fsgn5-9.fna.fbcdn.net/v/t1.15752-9/451275682_2032207797182450_4486953403117443058_n.png?_nc_cat=102&ccb=1-7&_nc_sid=9f807c&_nc_ohc=UHzI8HHV-TsQ7kNvgH4-vSv&_nc_ht=scontent.fsgn5-9.fna&oh=03_Q7cD1QH4IZNyWteJ_pPhjPuifD7F1QhP3uRsWguo8G_wFYP6pw&oe=66E38E30)

<a name = "DinhNghiaLayMauNyquist-Shannon"></a>
# 1.2 Sampling Definition
The sampling theorem ensures that the analog signal can be fully recovered as long as the sampling rate is at least twice as large as the highest frequency component of the sampled condenser signal. 
Fs ≥ 2Fmax 
- Fs → sampling frequency 
- Fmax → the highest frequency of the signal
The sampling frequency (Fs) is the number of samples taken in 1 second.
<a name = "ChongLanPho"></a>
# 2. Aliasing Phenomenon
<a name = "KhaiNiemAliasing"></a>
# 2.1 Aliasing Notion
Aliasing occurs when the sampling frequency of a signal is not high enough to capture the full details of the original signal, led to the digitized signal is distorted or the frequency component is
different from the original signal.

![The blue sampled signal is sufficiently bandlimited](https://scontent.fsgn5-12.fna.fbcdn.net/v/t1.15752-9/453437143_1368164827437156_7541003032965069600_n.png?_nc_cat=103&ccb=1-7&_nc_sid=9f807c&_nc_ohc=PhGGR8TNwsEQ7kNvgG44gci&_nc_ht=scontent.fsgn5-12.fna&oh=03_Q7cD1QG1gtnMlFlgxVhcAwKBBkRbsnDJgqGnJUo4ouKPh-wDnw&oe=66E3A37B)

<a name = "NguyenNhan"></a>
# 2.2 Causes of Aliasing
- Insufficient sampling frequency 
- No anti-aliasing filter used
<a name = "AnhHuong"></a>
# 2.3 Aliasing's Influence
- Distorted signal 
- Lost Information

![The Spectrum of a bandlimited signal is shown ](https://scontent.fsgn5-12.fna.fbcdn.net/v/t1.15752-9/454518915_866825351467080_6988008537933445333_n.png?_nc_cat=103&ccb=1-7&_nc_sid=9f807c&_nc_ohc=gP8npTX8RNEQ7kNvgFQOcgb&_nc_ht=scontent.fsgn5-12.fna&oh=03_Q7cD1QHrAQq_QUOE58CeB9Omd9CYmBf00FWIWPZreGA5qUpb4Q&oe=66E38C84)

<a name = "NganChan"></a>
# 2.4 Prevention of Aliasing
- Increasing Sampling Frequency 
- Use a low-pass filter to remove the higher frequency component than the Nyquist frequency.
<a name = "KhoiPhucTinHieu"></a>
# 3. Signal Reconstruction
<a name = "ZOH"></a>
# 3.1 Zero-Order-Hold Interpolation 
In this interpolation, a certain sample value is kept for the sampling period until it is received is the next sample.
<a name = "FOH"></a>
# 3.2 First-Order-Hold Interpolation
In this case, adjacent patterns are joined by straight lines. This can be achieved by filtering the pulse chain through:

![FOH](https://wikimedia.org/api/rest_v1/media/math/render/svg/91bb77a01a1e00a62c741d1c6d3f6badefa90b71)

<a name = "KhoiPhucHinhDang"></a>
# 3.3 Restore Shape

<a name = "III"></a>
# III. Chapter 3: MatLab Simulation And Jupyter Notebook

<a name = "3.1"></a>
# 3.1 Matlab Simulation
xa(t) = 5sin(20πt), 0≤ t ≤ 1.
fmax = 20π / 2 π  =  10 Hz
Theo định lí lấy mẫu Nyquist :         fs  >=  2fmax     <=>  fs >= 20 Hz

fs1 = 10Hz
![fs1](https://scontent.fsgn5-12.fna.fbcdn.net/v/t1.15752-9/453894257_344440448740472_4327297731452027034_n.png?_nc_cat=103&ccb=1-7&_nc_sid=9f807c&_nc_ohc=wG_kXpQuwbQQ7kNvgGSpsVx&_nc_ht=scontent.fsgn5-12.fna&oh=03_Q7cD1QG6NvZfD5BB3CmBqJW7rEBwIjz41OR9Wt35XHJyv-9KIA&oe=66E37F75)

fs2 = 20Hz
![fs2](https://scontent.fsgn5-9.fna.fbcdn.net/v/t1.15752-9/451287050_867489188775021_7753376292108564047_n.png?_nc_cat=102&ccb=1-7&_nc_sid=9f807c&_nc_ohc=bMlLUA_ScqQQ7kNvgEzEdeC&_nc_ht=scontent.fsgn5-9.fna&oh=03_Q7cD1QHr7-T15YMoHuJQtKv87_NEuZxvbjufvpeCW-SNBvlNVQ&oe=66E389BB)

fs3 = 100Hz
![fs3](https://scontent.fsgn5-5.fna.fbcdn.net/v/t1.15752-9/454046915_1551737422367475_387842403031950355_n.png?_nc_cat=108&ccb=1-7&_nc_sid=9f807c&_nc_ohc=nssyMAVAjpMQ7kNvgEr7FDx&_nc_ht=scontent.fsgn5-5.fna&oh=03_Q7cD1QEgqtnkrfVoZ9n5HjYbf5L2plWL4yDJjJWUKf7YLsTUvw&oe=66E3AABB)

fs4 = 1000Hz
![fs4](https://scontent.fsgn5-15.fna.fbcdn.net/v/t1.15752-9/453286578_690733899924866_808984128270162934_n.png?_nc_cat=111&ccb=1-7&_nc_sid=9f807c&_nc_ohc=L6xa2_y3HQMQ7kNvgExRYl0&_nc_ht=scontent.fsgn5-15.fna&oh=03_Q7cD1QF183OY6E19_4RFBoJgFC3Wr9Da-Y0DwiRSjZAZSqD7Dw&oe=66E39DC3)


<a name = "3.2"></a>
# 3.2 Jupyter Notebook

### Version Simulation
==> Version matlab R2023a.
