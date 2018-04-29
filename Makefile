TERRAFORM	= terraform

init:
	$(TERRAFORM) init

prof:
	sed -i s/your-aws-profile/$(PROF)/ terraform.tfvars

keygen:
	ssh-keygen -t rsa -f $(F)
	chmod 400 $F*
	mv $(F)* ~/.ssh/

plan:
	$(TERRAFORM) plan

show:
	$(TERRAFORM) show

apply:
	$(TERRAFORM) apply

destroy:
	$(TERRAFORM) destroy
