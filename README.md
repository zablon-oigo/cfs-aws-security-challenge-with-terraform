![workflow](https://github.com/zablon-oigo/cfs-aws-security-challenge-with-terrafrom/actions/workflows/main.yml/badge.svg)

#### Architecture Diagram

![demo](https://github.com/user-attachments/assets/9145650c-0698-4a7e-b336-f83662154d3f)


#### Description
In this project, I designed and implemented a scalable virtual private cloud architecture with public and private subnets spanning two availability zones for high availability. The architecture includes a NAT instance to securely provide outbound internet access for resources within the private subnets, while a load balancer ensures efficient distribution of incoming traffic across instances. Additionally, I integrated amazon cloudFront as a content delivery network with geo-restrictions, specifically limiting content access to Kenya, thereby ensuring low-latency and localized access for users.

#### Acknowledgements
I would like to extend my sincere gratitude to **CloudForceSky community** for their invaluable support, **Macrine** for the Docker images, and to **Kevin Tuei** for presenting this challenge, which provided a valuable opportunity for growth and learning.
