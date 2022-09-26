#                                                                 Team AWS Project

This is the project for hosting wordpress

In order to use this project:

 1) Please configure environment variables under GitHub Actions settings

AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY

<img width="1600" alt="Screenshot 2022-09-25 at 7 44 40 PM" src="https://user-images.githubusercontent.com/106113996/192174385-742839d4-075c-4f34-bc67-5cf20ea5ceae.png">

 2) Please configure remote backend with your s3 backet name in all backend.tf files:

<img width="387" alt="Screenshot 2022-09-25 at 8 24 18 PM" src="https://user-images.githubusercontent.com/106113996/192176783-cf6142f5-8789-4ebb-864c-7501faae8543.png">


 3) Please configure data source backend with s3 backet name in all data.tf files:

<img width="482" alt="Screenshot 2022-09-25 at 8 25 11 PM" src="https://user-images.githubusercontent.com/106113996/192177235-a3427c54-67f1-4581-ada4-4a4eca56a768.png">


 4) Please configure your zone ID and domain name in all terraform.auto.tfvars files:

<img width="370" alt="Screenshot 2022-09-25 at 8 39 22 PM" src="https://user-images.githubusercontent.com/106113996/192177674-8368a43e-c2f1-4c5b-b116-ace52883eabf.png">


 5) Please configure your domain name in wordpress.sh script

<img width="764" alt="Screenshot 2022-09-25 at 8 39 39 PM" src="https://user-images.githubusercontent.com/106113996/192177876-02358d5c-0b5e-454d-8a01-7326671d5cfd.png">

After all configurations is done, please uncomment desired region apply block in vpc.yml rds.yml asg.yml.

<img width="1085" alt="Screenshot 2022-09-25 at 9 03 34 PM" src="https://user-images.githubusercontent.com/106113996/192179774-58df14c3-2824-41db-b850-cfe2825a1d9a.png">



