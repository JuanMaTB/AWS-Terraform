# AWS-JuanMa <img src="https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white" /> <img src="https://img.shields.io/badge/Amazon AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white" />
<h1 align="center"><img src="/images/aws.png" alt="AWS" width=130 height=130>    <img src="/images/terraform.png" alt="Terraform" width=230 height=130>  <img src="/images/html_css.jpg" alt="HTML_CSS" width=130 height=90></h1>

<h2 align="center">A collection of Terraform files to deploy a basic static website using AWS </h2>


My Profile:


[![GitHub](https://badgen.net/badge/icon/github?icon=github&label)](https://github/JuanMaTB)


## What's this?
 
 This is a basic project that show how you can deploy a basic website using Terraform and AWS   
  
## Let's do it
 
 - You will need Terraform 4.33.0 or higher
 - Also an AWS account
 - Time to download this repo ans place over main directory
 - Just type ```Terraform init```
 - Then type ```Terraform apply``` (If you are using a Terraform old version, you will need type ```Terraform apply``` twice) 
 
## Files-included-in-this-repo

- buckets.tf : It Contains instructions to build a S3 bucket with a basic website configuration. In adition policies, ACL and uploaded objects has been included. 

- index.html : A cute breakfast webpage made by me.<h1 align="center"><img src="/images/example_web.jpg" alt="index_example" width=300 height=230>
  
- error.html : Just a basic error webpage.<h1 align="center"><img src="/images/error.jpg" alt="error" width=300 height=230>

- output.tf : Created to obtain the url of our website.  ![Terminal](https://badgen.net/badge/icon/terminal?icon=terminal&label)
 <h1 align="center"><img src="/images/example_output.jpg" alt="output" width=600 height=130></h1>

- provider.tf : Basic provider requirements... just copy/pasted from https://registry.terraform.io/providers/hashicorp/aws

- variables.tf : A simple example that how you can use variables.
 
 
## Let's finish it
 
- Just type ```Terraform destroy```  (If you are using a Terraform old version, you will need type ```Terraform destroy``` twice)
  
Note:
```terraform destroy``` does not delete the S3 Bucket ACL but does remove the resource from Terraform state.
 
 
 [![saythanks](https://img.shields.io/badge/say-thanks-ff69b4.svg)](https://saythanks.io/to/kennethreitz)
