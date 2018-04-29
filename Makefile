TERRAFORM	= terraform

init:
	$(TERRAFORM) init

keygen:
	ssh-keygen -t rsa -f $(F)

plan:
	$(TERRAFORM) plan

show:
	$(TERRAFORM) show

apply:
	$(TERRAFORM) apply

destroy:
	$(TERRAFORM) destroy
