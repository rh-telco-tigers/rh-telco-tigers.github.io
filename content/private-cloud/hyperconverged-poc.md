---
title: "Hyperconverged UPI OpenShift cluster"
date: 2023-02-14T15:42:47-05:00
draft: false
tags: ["OSP"]
authors: ["Balkrishna Pandey", "Ashish Aggarwal"]
---

In this POC we are using Openshift UPI (User Provided Infrastructure) in Opestack Environment. The overall goal is to deploy HAProxy, Keepalived and Coredns inside the same cluster to avoid creating outside DNS entries and load balancers for control plane components. This will allow us to lessen our dependence on external load balancers while also minimizing the resource usage. Hyperconverged cluster extend the use cases of OCP to edge locations where rackspace, cooling and power are limited. 

Full code available here: [Hyperconverged UPI OpenShift cluster](https://github.com/rh-telco-tigers/upi-with-internal-lb)