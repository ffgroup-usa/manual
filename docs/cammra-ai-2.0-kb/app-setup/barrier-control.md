---
sidebar_position: 4
title: Barrier Control
---

# Barrier Control Scenario

Enable automated gate access using CAMMRA AI plate recognition and external hardware integration. Configure barrier logic for vehicle access based on license plate lists.

## Overview

CAMMRA AI Barrier Control allows you to automate vehicle gate access by integrating with external devices such as controllers, relays, or internal I/O ports. License plates can be verified against Allow, Block, or Custom lists to control access.

The barrier is automatically opened for authorized vehicles and can remain closed for unauthorized ones. CAMMRA AI can be deployed at entry or exit points for car parks, gated communities, or secured premises.

## Barrier Control Types

In **Settings > Barrier control** dropdown menu, select the barrier integration type:

| Method | Hardware Needed | Use Case |
|--------|-----------------|----------|
| **Internal I/O** | Axis camera w/ I/O ports | Use camera's internal output port |
| **Controller** | External access controller | Integrate with door/gate access control systems |
| **Relay Module** | Networked relay device | Flexible control via external relays |

---

## A. Internal I/O

CAMMRA AI automatically opens a barrier using the camera's **internal I/O port**. Ideal for self-contained access controller without external relay or controller module.

### Configuration Steps

1. Go to **Barrier Control** in CAMMRA AI settings
2. Set **Type**: Internal I/O
3. **Select I/O Output**: Choose the port connected to gate/barrier
4. **(Optional) Select Virtual Port**: For software-based event logic
5. **Set Barrier Mode**:
   - *Do not open barrier*: No access granted
   - *Open to all*: Opens for every detected vehicle
   - *Open from Lists*: Opens only for plates on selected lists (Allow/Block/Custom)
   - *Open except Lists*: Opens for all except selected lists
6. **Vehicle Direction**: IN, OUT, or ANY
7. **Region of Interest (ROI)**: Choose detection zone

![Internal I/O configuration](../img/image14.png)

### Example: Open for Authorized Entries Only

- Type: Internal I/O
- I/O Output: 5
- Barrier Mode: Open from Lists → ✓ Allow List
- Vehicle Direction: IN
- ROI: 1

---

## B. Controller (Third-Party Access Controller)

Integrate CAMMRA AI with a third-party access controller over the network.

### Configuration Fields

| Field | Description |
|-------|-------------|
| Vehicle direction | IN, OUT, or Any |
| ROI | Detection zone this configuration applies to |
| IP address | IP of the access controller |
| Username / Password | Controller authentication |
| Connect | Verifies login and retrieves controller/reader |
| Door controller name | Select controller (fetched after connect) |
| Reader name | Reader/door endpoint to trigger |

![Controller configuration](../img/image29.png)

:::note
The system does not forward the license plate as a credential. The controller must be pre-configured to treat the reader event as a trigger.
:::

---

## C. Relay Output

Camera directly controls a barrier using a hardware relay.

### Requirements

1. Camera physically installed and connected to the network
2. CAMMRA AI running on the Axis camera
3. Cables connected between barrier and relay module
4. Basic setup done (ROI and other parameters configured)

### Configuration Fields

| Field | Description |
|-------|-------------|
| I/O Output # | Hardware output (relay) to be activated |
| Barrier mode | Which lists allow access |
| Vehicle direction | IN, OUT, or Any |
| ROI | Region of detection |
| IP address | Relay module IP (format: 192.168.0.0) |
| Username / Password | Relay module credentials |

![Relay configuration](../img/image3.png)

### Behavior

- When detected plate matches configured logic, CAMMRA AI triggers output for a fixed pulse duration (usually 1-2 seconds)
- Relay behavior is binary: activate or not, based on plate match
- No feedback from the relay (CAMMRA AI does not verify if gate physically opened)
