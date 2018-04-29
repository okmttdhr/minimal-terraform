# minimal terraform template

This tf files only create 1 VPC, 1 subnet, 1 route-table, 1 security_group, and 1 EC2 instance.

## setup

```
$ git clone git@github.com:ygnmhdtt/minimal-terraform.git
$ make keygen F=tf-key # or as you like
$ make prof PROF=your-profile # your AWS credential
$ make init
```

## plan

```
$ make plan
```

## create

```
$ make apply
```

## destroy

```
$ make destroy
```
