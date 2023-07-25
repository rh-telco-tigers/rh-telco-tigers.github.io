---
title: "Control Runtime of AWS Demo Clusters"
date: 2023-07-25
categories: ["Demos", "Workshops"]
tags: ["aws","ansible"]
authors: ["Mark DeNeve"]
---

[OCP AWS Miser](https://github.com/rh-telco-tigers/ocpawsmiser) contains a set of ansible scripts taht can be used to power off, and power on an OpenShift cluster. You can schedule these scripts to run via cron or form AAP to control when a DEMO OpenShift cluster is running in the AWS cloud. By only running the OCP demo environment durring normal business hours M-F, you can save over 75% of the cost of running the cluster full time for a month. 
