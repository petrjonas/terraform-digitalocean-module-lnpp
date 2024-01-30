# Terraform DigitalOcean Module (LNPP)

This repository contains a Terraform module for building a LNPP (Linux, Nginx, PostgreSQL, PHP) stack infrastructure on DigitalOcean.

The Terraform DigitalOcean Module helps you set up an infrastructure with the following components: 

* One Load Balancer: Distributes incoming network traffic across multiple Droplets to ensure that the application remains available during high-traffic periods.

* N Droplets (Ubuntu Installation): Create several Droplets (Ubuntu servers) based on your requirement for handling different tasks of your project.

* One provisioned database with PostgreSQL: Provision a PostgreSQL database to store and manage project's data.

* Virtual Private Network: Secure your Droplets with a Virtual Private Network that encrypts all data transfers making them private and secure.

## Usage of Example Configuration

### Prerequisites:

Before you start deploying the infrastructure, make sure you have the following:

* [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
  
* DigitalOcean API token: You need a DO Personal Access Token to interact with the DO API. You can generate it by following the instructions [here](https://docs.digitalocean.com/reference/api/create-personal-access-token/).

### Setup and Running Instructions:

1. **Set DO API Token:**

    Set the DO API token to your local machine's environment variable.

    ```bash
    export DO_PAT="<your-token>"
    ```

2. **Clone the repository:**
   
    ```bash
    git clone <repository-url>
    cd <directory-name>
    ```

3. **Initialize Terraform:**

    Change your current directory to the basic example directory. Initialize Terraform.

    ```bash
    cd examples/basic/
    terraform init
    ```

4. **Plan Deployment:**

    Build a Terraform plan to understand the actions Terraform will take to reach your desired infrastructure state.

    ```bash
    terraform plan -var "do_token=${DO_PAT}" --out=tfplan
    ```

5. **Deploy Infrastructure:**

    Apply the generated plan to reach the desired infrastructure state.

    ```bash
    terraform apply tfplan
    ```

6. **Destroy Infrastructure:**

    You can destroy the infrastructure completely using the `destroy` command once it is no longer needed.

    ```bash
    terraform destroy -var "do_token=${DO_PAT}"
    ```
