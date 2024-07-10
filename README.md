# AWS Infrastructure and Rest API with Infrastructure as Code (Terraform)

## Summary
Task 1 includes a Terraform project that creates a smple REST API service using AWS Lambda. The API URL will be available in the Terraform output once the resources are created.

task 2 is an extension of task_1 to add VPN configuration + email to the client - file "email.txt

task 3 solution in the file task_3.txt

## Prerequisites
- Configure AWS 
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version
aws configure
```

- Install Terraform
```
get -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt-get install terraform
```

## Provision infrastructure
- Clone repository
- Execute following commands
```
cd task_2
terraform init
terraform plan
terraform apply
```

- Expected result:
```
Apply complete! Resources: 9 added, 0 changed, 0 destroyed.

Outputs:

customer_gateway_id = "cgw-0e20aeb3c11d3e311"
hello_world_url = "https://z14x9qboxk.execute-api.eu-west-1.amazonaws.com/prod/hello"
stage_name = "prod"
vpn_connection_id = "vpn-01e471d345e6fb736"
vpn_gateway_id = "vgw-015083efda5f278da"
vpn_tunnel1_address = "54.72.9.2"
vpn_tunnel1_preshared_key = <sensitive>
vpn_tunnel2_address = "63.32.137.52"
vpn_tunnel2_preshared_key = <sensitive>
Done.
```


## API call verification 
- Call
```
curl "$(terraform output -raw api_url)"
```

- Response
```
"Hello World"
```