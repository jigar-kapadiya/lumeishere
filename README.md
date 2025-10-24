# 👤 User Service

A full-stack TypeScript project for managing and visualizing drug launch data.  
Includes an Express + Prisma + SQLite backend and a Next JS + shadcn + tailwind frontend.

---

## 🧠 Overview

### **Backend**
- Built with **Express.js** and **Prisma ORM**
- Uses **SQLite** for simplicity
- Provides REST APIs for:
  - User sign-up
  - User verification

### **Frontend**
- Built with **NextJS + shadcn + TypeScript**
- Implements user sign up and OTP verification
- Communicates with backend via Axios

---

## ⚙️ Prerequisites

Before running the project, make sure you have:

- **Node.js** (v18+ recommended)
- **npm** (comes with Node)

---

## 🚀 Project Setup

Clone the repository and move into the project folder:

```bash
git clone https://github.com/jigar-kapadiya/lumeishere.git
```

## 🧩 Initialize the Project (first time setup)

The following command installs dependencies, generates Prisma client,
runs migrations, and seeds the database.

```bash
./init.sh
```

## ▶️ Run the Project

After initialization, start both backend and frontend servers:

```bash
./start.sh
```
