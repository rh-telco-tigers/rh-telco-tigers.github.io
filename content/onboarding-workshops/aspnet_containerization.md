---
title: "Containerizing a Legacy Windows ASP.NET application"
date: 2023-07-25
categories: ["Demos", "Workshops"]
tags: ["windows","WMCO"]
authors: ["Mark DeNeve"]
---

[NerdDinner-OCP](https://github.com/xphyr/NerdDinner-OCP) walks a user through deploying a legacy Windows ASP.net 4.8 application inside a Windows container and deploying it to an OpenShift cluster. It contains a multi-stage build Dockerfile that can be used to compile the application without the need of Visual Studio. This helps to demonstrate a containerized workflow for Windows Container app building.