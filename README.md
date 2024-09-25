![workflow](https://github.com/zablon-oigo/cfs-aws-security-challenge-with-terrafrom/actions/workflows/main.yml/badge.svg)

#### Architecture Diagram

![demo](https://github.com/user-attachments/assets/9145650c-0698-4a7e-b336-f83662154d3f)


#### Description
In this project, I designed and implemented a virtual private cloud architecture featuring public and private subnets across two availability zones. My architecture includes a NAT instance to facilitate secure outbound internet access for resources in the private subnets, a load balancer to efficiently distribute incoming traffic, and auto-scaling groups to dynamically adjust the number of instances based on demand. Additionally, I integrated amazon cloudFront as a content delivery network, configuring it to serve content with region restrictions specifically limited to Kenya, ensuring low-latency access for local users.

