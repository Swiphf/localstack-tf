data "terraform_remote_state" "vpc" {
  backend = "local"

  config = {
    path = "./terraform.tfstate"
  }
}

# # Define the target group
# resource "aws_lb_target_group" "my_target_group" {
#   name     = "my-target-group"
#   port     = 5000
#   protocol = "HTTP"
#   vpc_id   = data.terraform_remote_state.vpc.outputs.vpc_id

#   health_check {
#     interval = 30
#     path     = "/"
#     protocol = "HTTP"
#     timeout  = 5
#   }
# }

# resource "aws_lb_target_group" "my_target_group" {
#   name     = "my-target-group"
#   port     = 5000
#   protocol = "HTTP"
#   vpc_id   = data.terraform_remote_state.vpc.outputs.vpc_id
# }





# # Define the load balancer
# resource "aws_lb" "my_load_balancer" {
#   name               = "my-load-balancer"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = ["sg-12345678"]     # Replace with a valid security group ID
#   subnets            = ["subnet-12345678"] # Replace with valid subnet IDs

#   enable_deletion_protection = false
#   drop_invalid_header_fields = false

#   enable_http2 = true

#   tags = {
#     Name = "my-load-balancer"
#   }
# }

# # Define the listener
# resource "aws_lb_listener" "my_listener" {
#   load_balancer_arn = aws_lb.my_load_balancer.arn
#   port              = 80
#   protocol          = "HTTP"

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.my_target_group.arn
#   }
# }