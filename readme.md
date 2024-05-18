# Create a Docker Container using Terraform
This repository teaches you the basics of building an Nginx server using Terraform. The `main.tf` file is configured to map your local port 8000 and deploy an `index.html` file in the Nginx server.



## pay attention 
- you must modify the line in terraform to your physical path, when cloned this repository, change the `host_path`

```bash

    volumes {
    container_path = "/usr/share/nginx/html/index.html"
    host_path      = "/home/avelino/learn-terraform-docker-container/index.html"
    read_only      = true
  }
}

```

## Commands to Run
To get started with this setup, run the following commands in your terminal:

```bash
terraform init
terraform plan
terraform apply
```
