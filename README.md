# 📻 FM RDS Receiver using RTL-SDR (Simulink Implementation)

## 📌 Overview
This project implements a **real-time FM Radio Data System (RDS) Receiver** using **RTL-SDR (Software Defined Radio)** and **MATLAB Simulink**. It demonstrates a complete communication chain—from RF signal acquisition to **audio output and digital data decoding**—making it a practical application of both **analog and digital modulation techniques**.

This model is widely used for **educational and research purposes** in communication systems.

---

## 🚀 Key Features
- Real-time FM signal reception using RTL-SDR hardware  
- FM demodulation and high-quality audio output  
- Extraction of RDS subcarrier (57 kHz)  
- Digital signal processing for RDS decoding  
- Recovery of broadcast metadata (station name, radio text)  
- Complete Simulink-based modular design  

---

## 🧠 System Architecture

### 🔹 1. RF Signal Acquisition
- Input signal captured using RTL-SDR dongle  
- Sampling rate: **912 kHz**  
- Tuned to FM broadcast band (87.5–108 MHz)

---

### 🔹 2. FM Demodulation
- Uses phase differentiation to demodulate FM signal  
- Audio processing includes:
  - 15 kHz low-pass filtering  
  - Downsampling to **48 kHz**  
  - 3.2 kHz deemphasis filtering  

---

### 🔹 3. RDS Signal Extraction
- RDS transmitted as **BPSK signal at 57 kHz**  
- Bit rate: **1187.5 bits/sec**  
- Signal is:
  - Filtered  
  - Downsampled  
  - Quadrature demodulated  

---

### 🔹 4. Signal Processing
- Matched filtering using **root-raised cosine filter**  
- Symbol synchronization using maximum signal power method  
- Carrier synchronization using **Viterbi & Viterbi algorithm**  
- Frequency offset correction to prevent bit errors  

---

### 🔹 5. RDS Decoding
- Data organized into:
  - **26-bit blocks** (16-bit data + 10-bit CRC)  
- Group structure:
  - 4 blocks = 1 group (104 bits)  
- Extracted information:
  - Program Service Name (PS)  
  - Radio Text (RT)  

---

## ⚙️ Requirements

### 🛠️ Hardware
- RTL-SDR USB Dongle  
- Antenna  

### 💻 Software
- MATLAB (R2020a or later)  
- Simulink  
- Communications Toolbox  
- RTL-SDR Support Package  

---

## ▶️ How to Run
1. Connect RTL-SDR device  
2. Open the Simulink model:
