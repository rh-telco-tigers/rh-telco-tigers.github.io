---
title: "BGP Peering with Juniper CN2"
date: 2023-08-03T14:01:51-05:00
tags: ["OpenShift", "Juniper", "CN2", "CNI"]
categories: ["Demos"]
draft: false
authors: ["Motohiro Abe"]
---

Dive into the implementation of CN2 (Juniper Cloud-Native Container Network) as the Container Networking Interface (CNI) in OpenShift. 
By enabling IP forwarding, this allowed pods and services in the namespace to communicate with an external router through CN2's fabric forwarding feature over BGP. 

- [Blog Article](https://cloudcult.dev/bgp-peering-with-juniper-cn2/)
- [Blog GitHub Repo](https://github.com/mabehiro/cn2-bgp-ipfabric-test)
