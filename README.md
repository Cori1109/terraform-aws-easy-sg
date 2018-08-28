# Terraform AWS Easy SG

## Introduction

Terraform module to create a security group that whitelists your current WAN IP address

## Contents

- [Usage](#usage)

## Usage

```hcl
module "easy-sg" {
  source = "rms1000watt/easy-sg/aws"

  vpc_id = "vpc-xxxxxxxxxxxxxxxxx"
}
```
